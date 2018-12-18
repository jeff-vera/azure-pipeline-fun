CREATE TABLE [dbo].[TestRows] (
    [Id]               INT              IDENTITY (1, 1) NOT NULL,
    [SomeText]         VARCHAR (50)     NOT NULL,
    [SomeBit]          BIT              NOT NULL,
    [SomeDate]         DATE             NOT NULL,
    [SomeDateTime]     DATETIME         NOT NULL,
    [SomeGUID]         UNIQUEIDENTIFIER NOT NULL,
    [SomeMoney]        MONEY            NOT NULL,
    [SomeNullableText] VARCHAR (50)     NULL,
    CONSTRAINT [PK_TestRows] PRIMARY KEY CLUSTERED ([Id] ASC)
);



