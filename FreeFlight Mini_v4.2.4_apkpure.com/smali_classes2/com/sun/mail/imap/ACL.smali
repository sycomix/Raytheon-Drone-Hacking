.class public Lcom/sun/mail/imap/ACL;
.super Ljava/lang/Object;
.source "ACL.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private name:Ljava/lang/String;

.field private rights:Lcom/sun/mail/imap/Rights;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/sun/mail/imap/Rights;

    invoke-direct {v0}, Lcom/sun/mail/imap/Rights;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    .line 65
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/ACL;

    .line 101
    .local v0, "acl":Lcom/sun/mail/imap/ACL;
    iget-object v1, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    invoke-virtual {v1}, Lcom/sun/mail/imap/Rights;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;

    iput-object v1, v0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    .line 102
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRights()Lcom/sun/mail/imap/Rights;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public setRights(Lcom/sun/mail/imap/Rights;)V
    .locals 0
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    .line 83
    return-void
.end method
