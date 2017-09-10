.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "msg"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "peek"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 61
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 63
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 66
    return-void
.end method

.method private checkSeen()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 203
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    .line 207
    .local v0, "f":Ljavax/mail/Folder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "f":Ljavax/mail/Folder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private fill()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 77
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-lt v8, v9, :cond_1

    .line 78
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v8, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 89
    :try_start_0
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    new-instance v8, Ljava/io/IOException;

    const-string v10, "No content for expunged message"

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 107
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 92
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    .line 93
    .local v7, "seqnum":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 94
    .local v2, "cnt":I
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v8, v10, :cond_3

    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v8, v10

    iget v10, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v8, v10, :cond_3

    .line 95
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v10, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v2, v8, v10

    .line 97
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    .line 98
    .local v5, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-boolean v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v8, :cond_5

    .line 99
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v10, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    invoke-virtual {v5, v7, v8, v10, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 107
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    .local v1, "ba":Lcom/sun/mail/iap/ByteArray;
    if-nez v1, :cond_6

    .line 111
    .end local v1    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_4
    new-instance v8, Ljava/io/IOException;

    const-string v9, "No content"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_5
    :try_start_4
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v10, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    invoke-virtual {v5, v7, v8, v10, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 102
    .end local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v6

    .line 103
    .local v6, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 104
    .end local v6    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "fex":Ljavax/mail/FolderClosedException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v3}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    .end local v3    # "fex":Ljavax/mail/FolderClosedException;
    .restart local v1    # "ba":Lcom/sun/mail/iap/ByteArray;
    .restart local v5    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v8, :cond_7

    .line 115
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 118
    :cond_7
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v8

    iput-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 119
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v8

    iput v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 120
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v4

    .line 122
    .local v4, "n":I
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 123
    iget v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 133
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v0, -0x1

    .line 136
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int v0, v2, v3

    .line 157
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 159
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v2, v3

    .line 160
    if-gtz v0, :cond_0

    .line 161
    const/4 v1, -0x1

    .line 166
    :goto_0
    monitor-exit p0

    return v1

    .line 163
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    .line 164
    .local v1, "cnt":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "avail":I
    .end local v1    # "cnt":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "avail":I
    :cond_1
    move v1, p3

    .line 163
    goto :goto_1
.end method
