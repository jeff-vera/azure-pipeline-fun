CREATE TABLE [dbo].[TestRows] (
    [Id]               INT              NULL,
    [SomeText]         VARCHAR (50)     NOT NULL,
    [SomeBit]          BIT              NOT NULL,
    [SomeDate]         DATE             NOT NULL,
    [SomeDateTime]     DATETIME         NOT NULL,
    [SomeGUID]         UNIQUEIDENTIFIER NOT NULL,
    [SomeMoney]        MONEY            NOT NULL,
    [SomeNullableText] VARCHAR (50)     NULL
);

