.class public Lcom/sun/mail/imap/protocol/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static standardItems:[Ljava/lang/String;


# instance fields
.field public mbox:Ljava/lang/String;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J

.field public unseen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MESSAGES"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RECENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UNSEEN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UIDNEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UIDVALIDITY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 6
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 41
    iput v2, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 42
    iput v2, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 43
    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 44
    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 45
    iput v2, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 51
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 53
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 54
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "parse error in STATUS"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "attr":Ljava/lang/String;
    const-string v1, "MESSAGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 69
    return-void

    .line 60
    :cond_2
    const-string v1, "RECENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    goto :goto_0

    .line 62
    :cond_3
    const-string v1, "UIDNEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_0

    .line 64
    :cond_4
    const-string v1, "UIDVALIDITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_0

    .line 66
    :cond_5
    const-string v1, "UNSEEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    goto :goto_0
.end method

.method public static add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V
    .locals 6
    .param p0, "s1"    # Lcom/sun/mail/imap/protocol/Status;
    .param p1, "s2"    # Lcom/sun/mail/imap/protocol/Status;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    .line 72
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->total:I

    if-eq v0, v2, :cond_0

    .line 73
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->total:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 74
    :cond_0
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-eq v0, v2, :cond_1

    .line 75
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 76
    :cond_1
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 77
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 78
    :cond_2
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 79
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 80
    :cond_3
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    if-eq v0, v2, :cond_4

    .line 81
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 82
    :cond_4
    return-void
.end method
