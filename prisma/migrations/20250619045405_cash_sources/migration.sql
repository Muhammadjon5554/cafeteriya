/*
  Warnings:

  - The primary key for the `CashTransactions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `CashTransactions` table. All the data in the column will be lost.
  - Changed the type of `source_name` on the `CashTransactions` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "CashSources" AS ENUM ('ORDERS', 'EXPENDITURES');

-- AlterTable
ALTER TABLE "CashTransactions" DROP CONSTRAINT "CashTransactions_pkey",
DROP COLUMN "id",
DROP COLUMN "source_name",
ADD COLUMN     "source_name" "CashSources" NOT NULL,
ADD CONSTRAINT "CashTransactions_pkey" PRIMARY KEY ("source_id", "source_name");
