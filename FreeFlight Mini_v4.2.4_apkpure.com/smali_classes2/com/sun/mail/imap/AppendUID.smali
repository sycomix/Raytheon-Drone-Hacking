.class public Lcom/sun/mail/imap/AppendUID;
.super Ljava/lang/Object;
.source "AppendUID.java"


# instance fields
.field public uid:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "uidvalidity"    # J
    .param p3, "uid"    # J

    .prologue
    const-wide/16 v0, -0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    .line 25
    iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uid:J

    .line 28
    iput-wide p1, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    .line 29
    iput-wide p3, p0, Lcom/sun/mail/imap/AppendUID;->uid:J

    .line 30
    return-void
.end method
