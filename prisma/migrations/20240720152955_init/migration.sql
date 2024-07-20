-- CreateTable
CREATE TABLE `Referral` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `referrername` VARCHAR(191) NOT NULL,
    `referreremail` VARCHAR(191) NOT NULL,
    `referrerphone` VARCHAR(191) NOT NULL,
    `referrerlocation` VARCHAR(191) NOT NULL,
    `refereename` VARCHAR(191) NOT NULL,
    `refereeemail` VARCHAR(191) NOT NULL,
    `refereephone` VARCHAR(191) NOT NULL,
    `refereelocation` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
