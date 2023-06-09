﻿CREATE TABLE [dbo].[UserConversations]
(
	[UserId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Users](Id) ON UPDATE CASCADE ON DELETE CASCADE,
	[ConversationId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[Conversations](Id) ON UPDATE CASCADE ON DELETE CASCADE,
    [JoinDateTime] DATETIME2(0),
	[LeftDateTime] DATETIME2(0),
	PRIMARY KEY(UserId,ConversationId)
)
