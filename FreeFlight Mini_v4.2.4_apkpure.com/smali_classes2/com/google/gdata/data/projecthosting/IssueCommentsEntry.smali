.class public Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "IssueCommentsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 45
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 49
    const-class v0, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/projecthosting/IssuesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/Updates;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/Updates;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getAtomRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 128
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getSendEmail()Lcom/google/gdata/data/projecthosting/SendEmail;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    return-object v0
.end method

.method public getUpdates()Lcom/google/gdata/data/projecthosting/Updates;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Updates;

    return-object v0
.end method

.method public hasSendEmail()Z
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setSendEmail(Lcom/google/gdata/data/projecthosting/SendEmail;)V
    .locals 1
    .param p1, "sendEmail"    # Lcom/google/gdata/data/projecthosting/SendEmail;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->removeExtension(Ljava/lang/Class;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUpdates(Lcom/google/gdata/data/projecthosting/Updates;)V
    .locals 1
    .param p1, "updates"    # Lcom/google/gdata/data/projecthosting/Updates;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->removeExtension(Ljava/lang/Class;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssueCommentsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{IssueCommentsEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method
