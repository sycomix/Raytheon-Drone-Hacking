.class Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
.super Ljava/lang/Object;
.source "IMAPStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPool"
.end annotation


# instance fields
.field private authenticatedConnections:Ljava/util/Vector;

.field private borrowedStoreConnections:J

.field private clientTimeoutInterval:J

.field private debug:Z

.field private folders:Ljava/util/Vector;

.field private lastTimePruned:J

.field private poolSize:I

.field private pruningInterval:J

.field private separateStoreConnection:Z

.field private serverTimeoutInterval:J


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    .line 168
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    .line 171
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    .line 174
    const-wide/32 v0, 0xafc8

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 177
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 187
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 190
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    return-void
.end method

.method static access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide v0
.end method

.method static access$002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide p1
.end method

.method static access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    return v0
.end method

.method static access$102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->debug:Z

    return p1
.end method

.method static access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return v0
.end method

.method static access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return p1
.end method

.method static access$300(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide v0
.end method

.method static access$302(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide p1
.end method

.method static access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide v0
.end method

.method static access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # J

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide p1
.end method

.method static access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return v0
.end method

.method static access$502(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return p1
.end method

.method static access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    return-object v0
.end method

.method static access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    return-wide v0
.end method

.method static access$708(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 4
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    return-wide v0
.end method

.method static access$710(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 4
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->borrowedStoreConnections:J

    return-wide v0
.end method

.method static access$800(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object v0
.end method

.method static access$802(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Ljava/util/Vector;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object p1
.end method

.method static access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    return-wide v0
.end method
