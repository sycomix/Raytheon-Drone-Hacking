.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;
.source "IMAPProtocol.java"


# static fields
.field static class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

.field static class$com$sun$mail$imap$protocol$BODYSTRUCTURE:Ljava/lang/Class;

.field static class$com$sun$mail$imap$protocol$IMAPProtocol:Ljava/lang/Class;

.field static class$com$sun$mail$imap$protocol$RFC822DATA:Ljava/lang/Class;

.field static class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

.field static class$java$io$PrintStream:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$Properties:Ljava/lang/Class;

.field static class$javax$mail$Flags:Ljava/lang/Class;


# instance fields
.field private authenticated:Z

.field private authmechs:Ljava/util/Vector;

.field private capabilities:Ljava/util/Hashtable;

.field private name:Ljava/lang/String;

.field private props:Ljava/util/Properties;

.field private rev1:Z

.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

.field private searchCharsets:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .param p6, "props"    # Ljava/util/Properties;
    .param p7, "isSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    .line 89
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    .line 92
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 95
    :cond_0
    const-string v0, "IMAP4rev1"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 98
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 498
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1256
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1257
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1260
    const-string v1, "COPY"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1261
    return-void
.end method

.method private createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
    .locals 9
    .param p1, "flags"    # Ljavax/mail/Flags;

    .prologue
    const/16 v8, 0x20

    .line 1301
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1302
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    .line 1305
    .local v5, "sf":[Ljavax/mail/Flags$Flag;
    const/4 v1, 0x1

    .line 1306
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_7

    .line 1308
    aget-object v0, v5, v2

    .line 1309
    .local v0, "f":Ljavax/mail/Flags$Flag;
    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_1

    .line 1310
    const-string v3, "\\Answered"

    .line 1323
    .local v3, "s":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_6

    .line 1324
    const/4 v1, 0x0

    .line 1327
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1306
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1311
    :cond_1
    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_2

    .line 1312
    const-string v3, "\\Deleted"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1313
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_3

    .line 1314
    const-string v3, "\\Draft"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1315
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_4

    .line 1316
    const-string v3, "\\Flagged"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1317
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_5

    .line 1318
    const-string v3, "\\Recent"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1319
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_0

    .line 1320
    const-string v3, "\\Seen"

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_1

    .line 1326
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1330
    .end local v0    # "f":Ljavax/mail/Flags$Flag;
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v6

    .line 1331
    .local v6, "uf":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_9

    .line 1332
    if-eqz v1, :cond_8

    .line 1333
    const/4 v1, 0x0

    .line 1336
    :goto_4
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1335
    :cond_8
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1339
    :cond_9
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "pat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 793
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 795
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 796
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 801
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 802
    .local v4, "linfo":[Lcom/sun/mail/imap/protocol/ListInfo;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 804
    .local v6, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 805
    new-instance v7, Ljava/util/Vector;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    .line 806
    .local v7, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v5

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 807
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_1

    .line 806
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_1
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 811
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 812
    new-instance v8, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 813
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_1

    .line 816
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_2
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 817
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v4, v8, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 818
    invoke-virtual {v7, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 823
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v7    # "v":Ljava/util/Vector;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 824
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 825
    return-object v4
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .locals 3
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1231
    if-eqz p3, :cond_0

    .line 1232
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UID FETCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1234
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FETCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    goto :goto_0
.end method

.method private fetchBody(ILjava/lang/String;IIZ)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .param p5, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1028
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p5, :cond_0

    const-string v2, "BODY.PEEK["

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez p2, :cond_1

    const-string v2, "]<"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1035
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1037
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1038
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1039
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "com.sun.mail.imap.protocol.BODY"

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    :goto_2
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    .line 1044
    :goto_3
    return-object v2

    .line 1028
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    const-string v2, "BODY["

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "]<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1039
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_2
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    goto :goto_2

    .line 1040
    :cond_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    .line 1041
    goto :goto_3

    .line 1043
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1044
    goto :goto_3
.end method

.method private fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "peek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 990
    if-eqz p3, :cond_1

    .line 991
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "BODY.PEEK["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez p2, :cond_0

    const-string v2, "]"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 997
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 999
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1000
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1001
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "com.sun.mail.imap.protocol.BODY"

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    :goto_2
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    .line 1006
    :goto_3
    return-object v2

    .line 991
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 994
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "BODY["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez p2, :cond_2

    const-string v2, "]"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1001
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_3
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODY:Ljava/lang/Class;

    goto :goto_2

    .line 1002
    :cond_4
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    .line 1003
    goto :goto_3

    .line 1005
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1006
    goto :goto_3
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v6, 0x0

    .line 894
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-nez v7, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-object v6

    .line 897
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, "b":B
    if-lez v0, :cond_2

    const/16 v7, 0x5b

    if-ne v0, v7, :cond_1

    .line 899
    :cond_2
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "s":Ljava/lang/String;
    const-string v7, "APPENDUID"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 907
    .local v4, "uidvalidity":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 908
    .local v2, "uid":J
    new-instance v6, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .locals 12
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    if-nez p3, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-static {p2, v10}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    .line 1433
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1437
    if-nez p3, :cond_2

    .line 1438
    const-string v10, "SEARCH"

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 1442
    .local v6, "r":[Lcom/sun/mail/iap/Response;
    :goto_1
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v7, v6, v10

    .line 1443
    .local v7, "response":Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    .line 1446
    .local v4, "matches":[I
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1447
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1449
    .local v8, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v6

    .local v3, "len":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 1450
    aget-object v10, v6, v1

    instance-of v10, v10, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v10, :cond_3

    .line 1449
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1429
    .end local v0    # "args":Lcom/sun/mail/iap/Argument;
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "matches":[I
    .end local v6    # "r":[Lcom/sun/mail/iap/Response;
    .end local v7    # "response":Lcom/sun/mail/iap/Response;
    .end local v8    # "v":Ljava/util/Vector;
    :cond_1
    invoke-static {p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1440
    .restart local v0    # "args":Lcom/sun/mail/iap/Argument;
    :cond_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "SEARCH CHARSET "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .restart local v6    # "r":[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 1453
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "matches":[I
    .restart local v7    # "response":Lcom/sun/mail/iap/Response;
    .restart local v8    # "v":Ljava/util/Vector;
    :cond_3
    aget-object v2, v6, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1455
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "SEARCH"

    invoke-virtual {v2, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1456
    :goto_4
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    .local v5, "num":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 1457
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1458
    :cond_4
    const/4 v10, 0x0

    aput-object v10, v6, v1

    goto :goto_3

    .line 1463
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v5    # "num":I
    :cond_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 1464
    .local v9, "vsize":I
    new-array v4, v9, [I

    .line 1465
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_6

    .line 1466
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v1

    .line 1465
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1470
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v8    # "v":Ljava/util/Vector;
    .end local v9    # "vsize":I
    :cond_6
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1471
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1472
    return-object v4
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .locals 11
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 1684
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 1685
    .local v7, "quotaRoot":Ljava/lang/String;
    new-instance v6, Ljavax/mail/Quota;

    invoke-direct {v6, v7}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v6, "q":Ljavax/mail/Quota;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 1688
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v9

    const/16 v10, 0x28

    if-eq v9, v10, :cond_0

    .line 1689
    new-instance v9, Lcom/sun/mail/iap/ParsingException;

    const-string v10, "parse error in QUOTA"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1691
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1692
    .local v8, "v":Ljava/util/Vector;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v9

    const/16 v10, 0x29

    if-eq v9, v10, :cond_2

    .line 1694
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1696
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 1697
    .local v2, "usage":J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 1698
    .local v4, "limit":J
    new-instance v0, Ljavax/mail/Quota$Resource;

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    .line 1699
    .local v0, "res":Ljavax/mail/Quota$Resource;
    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1702
    .end local v0    # "res":Ljavax/mail/Quota$Resource;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "usage":J
    .end local v4    # "limit":J
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 1703
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljavax/mail/Quota$Resource;

    iput-object v9, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 1704
    iget-object v9, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1705
    return-object v6
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .locals 7
    .param p1, "msgSequence"    # Ljava/lang/String;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1377
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1379
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1396
    :goto_0
    return-object v5

    .line 1380
    :catch_0
    move-exception v5

    .line 1391
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 1392
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_1

    .line 1391
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1396
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    goto :goto_0

    .line 1397
    :catch_1
    move-exception v0

    .line 1403
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v6, v5, v1

    goto :goto_2

    .line 1405
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :catch_2
    move-exception v2

    .line 1407
    .local v2, "ioex":Ljava/io/IOException;
    goto :goto_2

    .line 1408
    .end local v2    # "ioex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1409
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    throw v3

    .line 1410
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_4
    move-exception v4

    .line 1411
    .local v4, "sex":Ljavax/mail/search/SearchException;
    throw v4

    .line 1416
    .end local v4    # "sex":Ljavax/mail/search/SearchException;
    :cond_2
    new-instance v5, Ljavax/mail/search/SearchException;

    const-string v6, "Search failed"

    invoke-direct {v5, v6}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .locals 4
    .param p1, "msgset"    # Ljava/lang/String;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1285
    if-eqz p3, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "STORE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " +FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1293
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1294
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1295
    return-void

    .line 1289
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "STORE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 835
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    .line 836
    return-void
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 845
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    move-result-object v0

    return-object v0
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
    .locals 3
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "f"    # Ljavax/mail/Flags;
    .param p3, "d"    # Ljava/util/Date;
    .param p4, "data"    # Lcom/sun/mail/iap/Literal;
    .param p5, "uid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 853
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 854
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 856
    if-eqz p2, :cond_0

    .line 858
    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v2}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    .line 869
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 870
    if-eqz p3, :cond_1

    .line 871
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 873
    :cond_1
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)V

    .line 875
    const-string v2, "APPEND"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 878
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 881
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 883
    if-eqz p5, :cond_2

    .line 884
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object v2

    .line 886
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 302
    .local v12, "v":Ljava/util/Vector;
    const/4 v11, 0x0

    .line 303
    .local v11, "tag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 304
    .local v8, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 307
    .local v3, "done":Z
    :try_start_0
    const-string v13, "AUTHENTICATE LOGIN"

    const/4 v14, 0x0

    invoke-virtual {p0, v13, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 332
    .local v7, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 333
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/sun/mail/util/BASE64EncoderStream;

    const v13, 0x7fffffff

    invoke-direct {v1, v2, v13}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 334
    .local v1, "b64os":Ljava/io/OutputStream;
    const/4 v13, 0x2

    new-array v0, v13, [B

    fill-array-data v0, :array_0

    .line 335
    .local v0, "CRLF":[B
    const/4 v5, 0x1

    .line 337
    .local v5, "first":Z
    :goto_1
    if-nez v3, :cond_4

    .line 339
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 340
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 343
    if-eqz v5, :cond_0

    .line 344
    move-object/from16 v10, p1

    .line 345
    .local v10, "s":Ljava/lang/String;
    const/4 v5, 0x0

    .line 350
    :goto_2
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write([B)V

    .line 351
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 353
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 354
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 355
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 356
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 364
    .end local v10    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 366
    .local v6, "ioex":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 367
    const/4 v3, 0x1

    .line 369
    goto :goto_1

    .line 308
    .end local v0    # "CRLF":[B
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "first":Z
    .end local v6    # "ioex":Ljava/lang/Exception;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 310
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 311
    const/4 v3, 0x1

    goto :goto_0

    .line 347
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v0    # "CRLF":[B
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "first":Z
    .restart local v7    # "os":Ljava/io/OutputStream;
    :cond_0
    move-object/from16 v10, p2

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_2

    .line 357
    .end local v10    # "s":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 359
    const/4 v3, 0x1

    goto :goto_1

    .line 360
    :cond_2
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 361
    const/4 v3, 0x1

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 377
    :cond_4
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [Lcom/sun/mail/iap/Response;

    .line 378
    .local v9, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v12, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 382
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 384
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 385
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 387
    :cond_5
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 388
    return-void

    .line 334
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "authzid"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 406
    .local v12, "v":Ljava/util/Vector;
    const/4 v11, 0x0

    .line 407
    .local v11, "tag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 408
    .local v8, "r":Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 411
    .local v3, "done":Z
    :try_start_0
    const-string v13, "AUTHENTICATE PLAIN"

    const/4 v14, 0x0

    invoke-virtual {p0, v13, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 436
    .local v7, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 437
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/sun/mail/util/BASE64EncoderStream;

    const v13, 0x7fffffff

    invoke-direct {v1, v2, v13}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 439
    .local v1, "b64os":Ljava/io/OutputStream;
    :goto_1
    if-nez v3, :cond_3

    .line 441
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 442
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 444
    const-string v6, "\u0000"

    .line 445
    .local v6, "nullByte":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u0000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\u0000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 448
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write([B)V

    .line 449
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 451
    sget-object v13, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 452
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 453
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 454
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 462
    .end local v6    # "nullByte":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 464
    .local v5, "ioex":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 465
    const/4 v3, 0x1

    .line 467
    goto :goto_1

    .line 412
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ioex":Ljava/lang/Exception;
    .end local v7    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 414
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 415
    const/4 v3, 0x1

    goto :goto_0

    .line 455
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 457
    const/4 v3, 0x1

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 459
    const/4 v3, 0x1

    goto :goto_1

    .line 461
    :cond_2
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [Lcom/sun/mail/iap/Response;

    .line 476
    .local v9, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v12, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 480
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 482
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 483
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 485
    :cond_4
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 486
    return-void
.end method

.method public capability()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v4, "CAPABILITY"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 114
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    new-instance v4, Ljava/util/Hashtable;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    .line 118
    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 120
    aget-object v4, v3, v0

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    aget-object v1, v3, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 129
    .local v1, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v4, "CAPABILITY"

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_1

    .line 132
    .end local v1    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_3
    return-void
.end method

.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 917
    const-string v0, "CHECK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 918
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 926
    const-string v0, "CLOSE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 927
    return-void
.end method

.method public copy(IILjava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    return-void
.end method

.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 704
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 706
    const-string v1, "CREATE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 707
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 719
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 721
    const-string v1, "DELETE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 722
    return-void
.end method

.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1744
    const-string v3, "ACL"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1745
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "ACL not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1748
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1750
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1751
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1754
    const-string v3, "DELETEACL"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1755
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v1, v3

    .line 1758
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1759
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1760
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 251
    return-void
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 4
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 623
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 624
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 626
    const-string v3, "EXAMINE"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 630
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 631
    .local v1, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    const/4 v3, 0x1

    iput v3, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 634
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 636
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 637
    return-object v1
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 935
    const-string v0, "EXPUNGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 936
    return-void
.end method

.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1023
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZ)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 954
    const-string v3, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 955
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 957
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 958
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 959
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODYSTRUCTURE:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.sun.mail.imap.protocol.BODYSTRUCTURE"

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODYSTRUCTURE:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 965
    :cond_0
    :goto_1
    return-object v2

    .line 959
    :cond_1
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$BODYSTRUCTURE:Ljava/lang/Class;

    goto :goto_0

    .line 961
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 964
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_1
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .locals 6
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "flags":Ljavax/mail/Flags;
    const-string v5, "FLAGS"

    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1082
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1083
    aget-object v5, v4, v2

    if-eqz v5, :cond_0

    aget-object v5, v4, v2

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_0

    aget-object v5, v4, v2

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 1082
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1088
    :cond_1
    aget-object v1, v4, v2

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1089
    .local v1, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    sget-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$javax$mail$Flags:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "javax.mail.Flags"

    invoke-static {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$javax$mail$Flags:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    .end local v0    # "flags":Ljavax/mail/Flags;
    check-cast v0, Ljavax/mail/Flags;

    .restart local v0    # "flags":Ljavax/mail/Flags;
    if-eqz v0, :cond_0

    .line 1090
    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 1096
    .end local v1    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1097
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1098
    return-object v0

    .line 1089
    .restart local v1    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_3
    sget-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$javax$mail$Flags:Ljava/lang/Class;

    goto :goto_1
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .locals 5
    .param p1, "msgno"    # I
    .param p2, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1055
    if-nez p2, :cond_0

    const-string v2, "RFC822"

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1060
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1062
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1063
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$RFC822DATA:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.sun.mail.imap.protocol.RFC822DATA"

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$RFC822DATA:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .line 1070
    :goto_2
    return-object v2

    .line 1055
    .end local v0    # "r":[Lcom/sun/mail/iap/Response;
    .end local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "RFC822."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1064
    .restart local v0    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v1    # "response":Lcom/sun/mail/iap/Response;
    :cond_1
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$RFC822DATA:Ljava/lang/Class;

    goto :goto_1

    .line 1066
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    .line 1067
    goto :goto_2

    .line 1069
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1070
    goto :goto_2
.end method

.method public fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;
    .locals 9
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1127
    const/4 v4, 0x0

    .line 1128
    .local v4, "u":Lcom/sun/mail/imap/protocol/UID;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UID"

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1130
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1131
    aget-object v5, v3, v1

    if-eqz v5, :cond_0

    aget-object v5, v3, v1

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_1

    .line 1130
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1135
    .local v0, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    sget-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "com.sun.mail.imap.protocol.UID"

    invoke-static {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UID;
    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    .restart local v4    # "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v4, :cond_0

    .line 1136
    iget-wide v6, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_4

    .line 1143
    .end local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1144
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1145
    return-object v4

    .line 1135
    .restart local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_3
    sget-object v5, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    goto :goto_2

    .line 1139
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;
    .locals 13
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-wide/16 v10, -0x1

    cmp-long v7, p3, v10

    if-nez v7, :cond_1

    const-string v7, "*"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UID"

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1161
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1162
    .local v6, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v3

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 1163
    aget-object v7, v3, v1

    if-eqz v7, :cond_0

    aget-object v7, v3, v1

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v7, :cond_2

    .line 1162
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1155
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "r":[Lcom/sun/mail/iap/Response;
    .end local v6    # "v":Ljava/util/Vector;
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1166
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v6    # "v":Ljava/util/Vector;
    :cond_2
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1167
    .local v0, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    sget-object v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    if-nez v7, :cond_3

    const-string v7, "com.sun.mail.imap.protocol.UID"

    invoke-static {v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    .local v4, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v4, :cond_0

    .line 1168
    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1167
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_3
    sget-object v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    goto :goto_3

    .line 1171
    .end local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1172
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v3, v7

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1174
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sun/mail/imap/protocol/UID;

    .line 1175
    .local v5, "ua":[Lcom/sun/mail/imap/protocol/UID;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1176
    return-object v5
.end method

.method public fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;
    .locals 11
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1186
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 1187
    if-lez v1, :cond_0

    .line 1188
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1189
    :cond_0
    aget-wide v8, p1, v1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UID"

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1195
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1196
    .local v7, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    array-length v2, v3

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1197
    aget-object v8, v3, v1

    if-eqz v8, :cond_2

    aget-object v8, v3, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v8, :cond_3

    .line 1196
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1200
    :cond_3
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1201
    .local v0, "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    sget-object v8, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    if-nez v8, :cond_4

    const-string v8, "com.sun.mail.imap.protocol.UID"

    invoke-static {v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/UID;

    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_2

    .line 1202
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1201
    .end local v5    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_4
    sget-object v8, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    goto :goto_3

    .line 1205
    .end local v0    # "fr":Lcom/sun/mail/imap/protocol/FetchResponse;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1206
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1208
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v6, v8, [Lcom/sun/mail/imap/protocol/UID;

    .line 1209
    .local v6, "ua":[Lcom/sun/mail/imap/protocol/UID;
    invoke-virtual {v7, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1210
    return-object v6
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1105
    const-string v3, "UID"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1108
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1110
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1111
    .local v1, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1112
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.sun.mail.imap.protocol.UID"

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    .line 1117
    :cond_0
    :goto_1
    return-object v2

    .line 1112
    :cond_1
    sget-object v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$UID:Ljava/lang/Class;

    goto :goto_0

    .line 1113
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1116
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_1
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .locals 13
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1768
    const-string v11, "ACL"

    invoke-virtual {p0, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1769
    new-instance v11, Lcom/sun/mail/iap/BadCommandException;

    const-string v12, "ACL not supported"

    invoke-direct {v11, v12}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1772
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1774
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1775
    .local v2, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v2, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1777
    const-string v11, "GETACL"

    invoke-virtual {p0, v11, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 1778
    .local v7, "r":[Lcom/sun/mail/iap/Response;
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v8, v7, v11

    .line 1781
    .local v8, "response":Lcom/sun/mail/iap/Response;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1782
    .local v10, "v":Ljava/util/Vector;
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1783
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v7

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_5

    .line 1784
    aget-object v11, v7, v3

    instance-of v11, v11, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v11, :cond_2

    .line 1783
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1787
    :cond_2
    aget-object v4, v7, v3

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1788
    .local v4, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v11, "ACL"

    invoke-virtual {v4, v11}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1792
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1793
    const/4 v6, 0x0

    .line 1794
    .local v6, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1795
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    .line 1796
    .local v9, "rights":Ljava/lang/String;
    if-nez v9, :cond_4

    .line 1801
    .end local v9    # "rights":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    aput-object v11, v7, v3

    goto :goto_1

    .line 1798
    .restart local v9    # "rights":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/sun/mail/imap/ACL;

    new-instance v11, Lcom/sun/mail/imap/Rights;

    invoke-direct {v11, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v11}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    .line 1799
    .local v1, "acl":Lcom/sun/mail/imap/ACL;
    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1807
    .end local v1    # "acl":Lcom/sun/mail/imap/ACL;
    .end local v3    # "i":I
    .end local v4    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v5    # "len":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "rights":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1808
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1809
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v0, v11, [Lcom/sun/mail/imap/ACL;

    .line 1810
    .local v0, "aa":[Lcom/sun/mail/imap/ACL;
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1811
    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 11
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1585
    const-string v9, "QUOTA"

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1586
    new-instance v9, Lcom/sun/mail/iap/BadCommandException;

    const-string v10, "QUOTA not supported"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1588
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1589
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1591
    const-string v9, "GETQUOTA"

    invoke-virtual {p0, v9, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 1593
    .local v6, "r":[Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 1594
    .local v5, "quota":Ljavax/mail/Quota;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1595
    .local v8, "v":Ljava/util/Vector;
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v6, v9

    .line 1598
    .local v7, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1599
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v6

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1600
    aget-object v9, v6, v1

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_2

    .line 1599
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    :cond_2
    aget-object v2, v6, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1604
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "QUOTA"

    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1605
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v5

    .line 1606
    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1607
    const/4 v9, 0x0

    aput-object v9, v6, v1

    goto :goto_1

    .line 1613
    .end local v1    # "i":I
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v3    # "len":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1614
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1615
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v4, v9, [Ljavax/mail/Quota;

    .line 1616
    .local v4, "qa":[Ljavax/mail/Quota;
    invoke-virtual {v8, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1617
    return-object v4
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 14
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 1520
    const-string v12, "QUOTA"

    invoke-virtual {p0, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1521
    new-instance v12, Lcom/sun/mail/iap/BadCommandException;

    const-string v13, "GETQUOTAROOT not supported"

    invoke-direct {v12, v13}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1524
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1526
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1527
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1529
    const-string v12, "GETQUOTAROOT"

    invoke-virtual {p0, v12, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 1531
    .local v8, "r":[Lcom/sun/mail/iap/Response;
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v8, v12

    .line 1533
    .local v9, "response":Lcom/sun/mail/iap/Response;
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 1536
    .local v11, "tab":Ljava/util/Hashtable;
    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1537
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v8

    .local v4, "len":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 1538
    aget-object v12, v8, v2

    instance-of v12, v12, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v12, :cond_2

    .line 1537
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1541
    :cond_2
    aget-object v3, v8, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1542
    .local v3, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v12, "QUOTAROOT"

    invoke-virtual {v3, v12}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1547
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1549
    const/4 v10, 0x0

    .line 1550
    .local v10, "root":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1551
    new-instance v12, Ljavax/mail/Quota;

    invoke-direct {v12, v10}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1552
    :cond_3
    aput-object v13, v8, v2

    goto :goto_1

    .line 1553
    .end local v10    # "root":Ljava/lang/String;
    :cond_4
    const-string v12, "QUOTA"

    invoke-virtual {v3, v12}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1554
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v7

    .line 1555
    .local v7, "quota":Ljavax/mail/Quota;
    iget-object v12, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Quota;

    .line 1556
    .local v5, "q":Ljavax/mail/Quota;
    if-eqz v5, :cond_5

    iget-object v12, v5, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v12, :cond_5

    .line 1559
    :cond_5
    iget-object v12, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v11, v12, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    aput-object v13, v8, v2

    goto :goto_1

    .line 1566
    .end local v2    # "i":I
    .end local v3    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v4    # "len":I
    .end local v5    # "q":Ljavax/mail/Quota;
    .end local v7    # "quota":Ljavax/mail/Quota;
    :cond_6
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1567
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1569
    invoke-virtual {v11}, Ljava/util/Hashtable;->size()I

    move-result v12

    new-array v6, v12, [Ljavax/mail/Quota;

    .line 1570
    .local v6, "qa":[Ljavax/mail/Quota;
    invoke-virtual {v11}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1571
    .local v1, "e":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1572
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Quota;

    aput-object v12, v6, v2

    .line 1571
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1573
    :cond_7
    return-object v6
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isREV1()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 776
    const-string v0, "LIST"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 11
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1821
    const-string v9, "ACL"

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1822
    new-instance v9, Lcom/sun/mail/iap/BadCommandException;

    const-string v10, "ACL not supported"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1825
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1827
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1828
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1831
    const-string v9, "LISTRIGHTS"

    invoke-virtual {p0, v9, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1832
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v6, v4, v9

    .line 1835
    .local v6, "response":Lcom/sun/mail/iap/Response;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1836
    .local v8, "v":Ljava/util/Vector;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1837
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1838
    aget-object v9, v4, v1

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_2

    .line 1837
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    :cond_2
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1842
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "LISTRIGHTS"

    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1846
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1848
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1850
    :goto_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .local v7, "rights":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1851
    new-instance v9, Lcom/sun/mail/imap/Rights;

    invoke-direct {v9, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 1852
    :cond_3
    const/4 v9, 0x0

    aput-object v9, v4, v1

    goto :goto_1

    .line 1858
    .end local v1    # "i":I
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v3    # "len":I
    .end local v7    # "rights":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1859
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1860
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v5, v9, [Lcom/sun/mail/imap/Rights;

    .line 1861
    .local v5, "ra":[Lcom/sun/mail/imap/Rights;
    invoke-virtual {v8, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1862
    return-object v5
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 287
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 290
    const-string v1, "LOGIN"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 293
    return-void
.end method

.method public logout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 273
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 276
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 277
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 278
    return-void
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 786
    const-string v0, "LSUB"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1871
    const-string v8, "ACL"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1872
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "ACL not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1875
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1877
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1878
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1880
    const-string v8, "MYRIGHTS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1881
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v4, v8

    .line 1884
    .local v5, "response":Lcom/sun/mail/iap/Response;
    const/4 v6, 0x0

    .line 1885
    .local v6, "rights":Lcom/sun/mail/imap/Rights;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1886
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 1887
    aget-object v8, v4, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_2

    .line 1886
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    :cond_2
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1891
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "MYRIGHTS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1894
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1895
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 1896
    .local v7, "rs":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1897
    new-instance v6, Lcom/sun/mail/imap/Rights;

    .end local v6    # "rights":Lcom/sun/mail/imap/Rights;
    invoke-direct {v6, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    .line 1898
    .restart local v6    # "rights":Lcom/sun/mail/imap/Rights;
    :cond_3
    const/4 v8, 0x0

    aput-object v8, v4, v1

    goto :goto_1

    .line 1904
    .end local v1    # "i":I
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v3    # "len":I
    .end local v7    # "rs":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1905
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1906
    return-object v6
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1481
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1482
    new-instance v6, Lcom/sun/mail/iap/BadCommandException;

    const-string v7, "NAMESPACE not supported"

    invoke-direct {v6, v7}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1484
    :cond_0
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1486
    .local v4, "r":[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 1487
    .local v3, "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v4, v6

    .line 1490
    .local v5, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1491
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v4

    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 1492
    aget-object v6, v4, v0

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v6, :cond_2

    .line 1491
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1495
    :cond_2
    aget-object v1, v4, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1496
    .local v1, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v6, "NAMESPACE"

    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1497
    if-nez v3, :cond_3

    .line 1498
    new-instance v3, Lcom/sun/mail/imap/protocol/Namespaces;

    .end local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 1499
    .restart local v3    # "namespace":Lcom/sun/mail/imap/protocol/Namespaces;
    :cond_3
    aput-object v7, v4, v0

    goto :goto_1

    .line 1505
    .end local v0    # "i":I
    .end local v1    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v2    # "len":I
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1506
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1507
    return-object v3
.end method

.method public noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    const-string v1, "IMAP DEBUG: IMAPProtocol noop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_0
    const-string v0, "NOOP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 262
    return-void
.end method

.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/16 v6, 0x5d

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 161
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-ne v1, v6, :cond_2

    .line 184
    :cond_1
    return-void

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v1, 0x1

    const-string v3, "AUTH="

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "IMAP DEBUG: AUTH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 975
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .param p1, "msgno"    # I
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1015
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZ)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 191
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 202
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 196
    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 197
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 199
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v1
.end method

.method public proxyauth(Ljava/lang/String;)V
    .locals 2
    .param p1, "u"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 553
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 555
    const-string v1, "PROXYAUTH"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 556
    return-void
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 732
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 734
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 735
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 738
    const-string v1, "RENAME"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 739
    return-void
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    if-nez v0, :cond_0

    .line 495
    :try_start_0
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 497
    .local v9, "sac":Ljava/lang/Class;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$IMAPProtocol:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "com.sun.mail.imap.protocol.IMAPProtocol"

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$IMAPProtocol:Ljava/lang/Class;

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$util$Properties:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.util.Properties"

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$util$Properties:Ljava/lang/Class;

    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v3, 0x4

    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$io$PrintStream:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.io.PrintStream"

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$io$PrintStream:Ljava/lang/Class;

    :goto_3
    aput-object v0, v2, v3

    const/4 v3, 0x5

    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    :goto_4
    aput-object v0, v2, v3

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 505
    .local v6, "c":Ljava/lang/reflect/Constructor;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v6    # "c":Ljava/lang/reflect/Constructor;
    .end local v9    # "sac":Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_9

    array-length v0, p1

    if-lez v0, :cond_9

    .line 527
    new-instance v10, Ljava/util/Vector;

    array-length v0, p1

    invoke-direct {v10, v0}, Ljava/util/Vector;-><init>(I)V

    .line 528
    .local v10, "v":Ljava/util/Vector;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    array-length v0, p1

    if-ge v8, v0, :cond_a

    .line 529
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    aget-object v2, p1, v8

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    aget-object v0, p1, v8

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 528
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 497
    .end local v8    # "i":I
    .end local v10    # "v":Ljava/util/Vector;
    .restart local v9    # "sac":Ljava/lang/Class;
    :cond_2
    :try_start_1
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$com$sun$mail$imap$protocol$IMAPProtocol:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$util$Properties:Ljava/lang/Class;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$io$PrintStream:Ljava/lang/Class;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_4

    .line 505
    .restart local v6    # "c":Ljava/lang/reflect/Constructor;
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 514
    .end local v6    # "c":Ljava/lang/reflect/Constructor;
    .end local v9    # "sac":Ljava/lang/Class;
    :catch_0
    move-exception v7

    .line 515
    .local v7, "ex":Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_8

    .line 516
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "IMAP DEBUG: Can\'t load SASL authenticator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_8
    :goto_7
    return-void

    .line 533
    :cond_9
    iget-object v10, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    .line 535
    .restart local v10    # "v":Ljava/util/Vector;
    :cond_a
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 536
    .local v1, "mechs":[Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    goto :goto_7
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 1367
    const-string v0, "ALL"

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 589
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 590
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 592
    const-string v4, "SELECT"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 596
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 599
    .local v1, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 601
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v2, v4

    .line 603
    .local v3, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "READ-ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 605
    const/4 v4, 0x1

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 610
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 611
    return-object v1

    .line 607
    :cond_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_0
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .locals 6
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "modifier"    # C
    .param p3, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1716
    const-string v4, "ACL"

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1717
    new-instance v4, Lcom/sun/mail/iap/BadCommandException;

    const-string v5, "ACL not supported"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1720
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1722
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1723
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1724
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1726
    .local v3, "rights":Ljava/lang/String;
    const/16 v4, 0x2b

    if-eq p2, v4, :cond_1

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_2

    .line 1727
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1728
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1730
    const-string v4, "SETACL"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1731
    .local v1, "r":[Lcom/sun/mail/iap/Response;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v1, v4

    .line 1734
    .local v2, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1735
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1736
    return-void
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, "b":B
    if-lez v0, :cond_1

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 142
    :cond_1
    if-nez v0, :cond_3

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "s":Ljava/lang/String;
    const-string v2, "CAPABILITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Hashtable;

    .line 149
    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/Vector;

    .line 150
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 8
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1628
    const-string v5, "QUOTA"

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1629
    new-instance v5, Lcom/sun/mail/iap/BadCommandException;

    const-string v6, "QUOTA not supported"

    invoke-direct {v5, v6}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1631
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1632
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1633
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1634
    .local v2, "qargs":Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v5, :cond_1

    .line 1635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 1636
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-object v5, v5, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1637
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-wide v6, v5, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v2, v6, v7}, Lcom/sun/mail/iap/Argument;->writeNumber(J)V

    .line 1635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 1642
    const-string v5, "SETQUOTA"

    invoke-virtual {p0, v5, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1643
    .local v3, "r":[Lcom/sun/mail/iap/Response;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v3, v5

    .line 1670
    .local v4, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1671
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1677
    return-void
.end method

.method public startTLS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 565
    :try_start_0
    const-string v3, "STARTTLS"

    invoke-super {p0, v3}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 578
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v1

    .line 570
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    throw v1

    .line 571
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/sun/mail/iap/Response;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    aput-object v4, v2, v3

    .line 575
    .local v2, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 576
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_0
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    .locals 10
    .param p1, "mbox"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "IMAP4SUNVERSION"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 650
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "STATUS not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 653
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 655
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 656
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 658
    new-instance v3, Lcom/sun/mail/iap/Argument;

    invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 659
    .local v3, "itemArgs":Lcom/sun/mail/iap/Argument;
    if-nez p2, :cond_1

    .line 660
    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 662
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v4, p2

    .local v4, "len":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 663
    aget-object v8, p2, v1

    invoke-virtual {v3, v8}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 666
    const-string v8, "STATUS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 668
    .local v5, "r":[Lcom/sun/mail/iap/Response;
    const/4 v7, 0x0

    .line 669
    .local v7, "status":Lcom/sun/mail/imap/protocol/Status;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 672
    .local v6, "response":Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 673
    const/4 v1, 0x0

    array-length v4, v5

    :goto_1
    if-ge v1, v4, :cond_6

    .line 674
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 673
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 677
    :cond_4
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 678
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "STATUS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 679
    if-nez v7, :cond_5

    .line 680
    new-instance v7, Lcom/sun/mail/imap/protocol/Status;

    .end local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    invoke-direct {v7, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 683
    .restart local v7    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_3
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_2

    .line 682
    :cond_5
    new-instance v8, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v7, v8}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    goto :goto_3

    .line 689
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 690
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 691
    return-object v7
.end method

.method public storeFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flags"    # Ljavax/mail/Flags;
    .param p4, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1272
    return-void
.end method

.method public storeFlags(ILjavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1280
    return-void
.end method

.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    .locals 1
    .param p1, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;
    .param p2, "flags"    # Ljavax/mail/Flags;
    .param p3, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1266
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 747
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 749
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 752
    const-string v1, "SUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 753
    return-void
.end method

.method protected supportsNonSyncLiterals()Z
    .locals 1

    .prologue
    .line 223
    const-string v0, "LITERAL+"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    .locals 2
    .param p1, "set"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 944
    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UID EXPUNGE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UID EXPUNGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 947
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "mbox"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 763
    .local v0, "args":Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 764
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 766
    const-string v1, "UNSUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 767
    return-void
.end method
