const express = require('express');

const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.json());

const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

const cors = require("cors");
app.use(cors());


const emailnotification = require('./emailnotification');
// Endpoint to create a new referral
app.post('/referdata', async (req, res) => {
    const { referrername, referreremail, referrerphone, referrerlocation, refereename, refereeemail, refereephone, refereelocation } = req.body;
    try {
        const newReferral = await prisma.referral.create({
            data: {
                referrername,
                referreremail,
                referrerphone,
                referrerlocation,
                refereename,
                refereeemail,
                refereephone,
                refereelocation
            },
        });
        res.status(201).json(newReferral);
        
        emailnotification.send;
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
});

app.listen(8081, () => {
    console.log("listening...");
})



