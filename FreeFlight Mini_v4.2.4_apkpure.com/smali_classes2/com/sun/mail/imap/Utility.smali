.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .prologue
    .line 63
    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    .line 67
    .local v6, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_8

    .line 68
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 69
    .local v2, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v0

    .line 74
    .local v0, "current":I
    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    :cond_2
    new-instance v4, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v4}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 78
    .local v4, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 81
    add-int/lit8 v1, v1, 0x1

    :goto_2
    array-length v7, p0

    if-ge v1, v7, :cond_7

    .line 83
    aget-object v2, p0, v1

    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 85
    .restart local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v3

    .line 90
    .local v3, "next":I
    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    :cond_5
    add-int/lit8 v7, v0, 0x1

    if-ne v3, v7, :cond_6

    .line 94
    move v0, v3

    goto :goto_3

    .line 99
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 103
    .end local v3    # "next":I
    :cond_7
    iput v0, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 104
    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    .end local v0    # "current":I
    .end local v2    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "set":Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_8
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 108
    const/4 v5, 0x0

    .line 112
    :goto_4
    return-object v5

    .line 110
    :cond_9
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 111
    .local v5, "sets":[Lcom/sun/mail/imap/protocol/MessageSet;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 12
    .param p0, "msgs"    # [Ljavax/mail/Message;

    .prologue
    .line 121
    new-instance v8, Ljava/util/Vector;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 125
    .local v8, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, p0

    if-ge v2, v9, :cond_4

    .line 126
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 127
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 125
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0

    .line 132
    .local v0, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 133
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 136
    add-int/lit8 v2, v2, 0x1

    :goto_2
    array-length v9, p0

    if-ge v2, v9, :cond_3

    .line 138
    aget-object v3, p0, v2

    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 140
    .restart local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 136
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 142
    :cond_1
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 144
    .local v4, "next":J
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 145
    move-wide v0, v4

    goto :goto_3

    .line 150
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 154
    .end local v4    # "next":J
    :cond_3
    iput-wide v0, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 155
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    .end local v0    # "current":J
    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v6    # "set":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_4
    invoke-virtual {v8}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 159
    const/4 v7, 0x0

    .line 163
    :goto_4
    return-object v7

    .line 161
    :cond_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v7, v9, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 162
    .local v7, "sets":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_4
.end method
