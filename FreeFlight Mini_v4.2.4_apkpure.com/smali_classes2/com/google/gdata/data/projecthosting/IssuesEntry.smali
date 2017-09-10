.class public Lcom/google/gdata/data/projecthosting/IssuesEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "IssuesEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/projecthosting/IssuesEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 37
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
    .line 46
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addBlockedOn(Lcom/google/gdata/data/projecthosting/BlockedOn;)V
    .locals 1
    .param p1, "blockedOn"    # Lcom/google/gdata/data/projecthosting/BlockedOn;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getBlockedOns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public addBlocking(Lcom/google/gdata/data/projecthosting/Blocking;)V
    .locals 1
    .param p1, "blocking"    # Lcom/google/gdata/data/projecthosting/Blocking;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getBlockings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public addCc(Lcom/google/gdata/data/projecthosting/Cc;)V
    .locals 1
    .param p1, "cc"    # Lcom/google/gdata/data/projecthosting/Cc;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getCcs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public addLabel(Lcom/google/gdata/data/projecthosting/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/google/gdata/data/projecthosting/Label;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getLabels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/BlockedOn;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 57
    new-instance v0, Lcom/google/gdata/data/projecthosting/BlockedOn;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/BlockedOn;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/BlockedOn;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/Blocking;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    new-instance v0, Lcom/google/gdata/data/projecthosting/Blocking;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/Blocking;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/Blocking;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 61
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/Cc;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    new-instance v0, Lcom/google/gdata/data/projecthosting/Cc;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/Cc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/Cc;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/ClosedDate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/Label;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/IssuesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    new-instance v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/MergedInto;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/MergedInto;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Owner;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    new-instance v0, Lcom/google/gdata/data/projecthosting/Owner;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/Owner;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/Owner;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 74
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Stars;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/State;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/projecthosting/IssuesEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getAtomRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 442
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedOns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/BlockedOn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const-class v0, Lcom/google/gdata/data/projecthosting/BlockedOn;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/Blocking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/projecthosting/Blocking;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCcs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/Cc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/projecthosting/Cc;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClosedDate()Lcom/google/gdata/data/projecthosting/ClosedDate;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/google/gdata/data/projecthosting/ClosedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/ClosedDate;

    return-object v0
.end method

.method public getIssueId()Lcom/google/gdata/data/projecthosting/Id;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Id;

    return-object v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const-class v0, Lcom/google/gdata/data/projecthosting/Label;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMergedInto()Lcom/google/gdata/data/projecthosting/MergedInto;
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    return-object v0
.end method

.method public getOwner()Lcom/google/gdata/data/projecthosting/Owner;
    .locals 1

    .prologue
    .line 287
    const-class v0, Lcom/google/gdata/data/projecthosting/Owner;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Owner;

    return-object v0
.end method

.method public getSendEmail()Lcom/google/gdata/data/projecthosting/SendEmail;
    .locals 1

    .prologue
    .line 318
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    return-object v0
.end method

.method public getStars()Lcom/google/gdata/data/projecthosting/Stars;
    .locals 1

    .prologue
    .line 349
    const-class v0, Lcom/google/gdata/data/projecthosting/Stars;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Stars;

    return-object v0
.end method

.method public getState()Lcom/google/gdata/data/projecthosting/State;
    .locals 1

    .prologue
    .line 380
    const-class v0, Lcom/google/gdata/data/projecthosting/State;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/State;

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/projecthosting/Status;
    .locals 1

    .prologue
    .line 411
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Status;

    return-object v0
.end method

.method public hasBlockedOns()Z
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/google/gdata/data/projecthosting/BlockedOn;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBlockings()Z
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/google/gdata/data/projecthosting/Blocking;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCcs()Z
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/google/gdata/data/projecthosting/Cc;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasClosedDate()Z
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/google/gdata/data/projecthosting/ClosedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasIssueId()Z
    .locals 1

    .prologue
    .line 220
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 247
    const-class v0, Lcom/google/gdata/data/projecthosting/Label;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMergedInto()Z
    .locals 1

    .prologue
    .line 278
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOwner()Z
    .locals 1

    .prologue
    .line 309
    const-class v0, Lcom/google/gdata/data/projecthosting/Owner;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSendEmail()Z
    .locals 1

    .prologue
    .line 340
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStars()Z
    .locals 1

    .prologue
    .line 371
    const-class v0, Lcom/google/gdata/data/projecthosting/Stars;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 402
    const-class v0, Lcom/google/gdata/data/projecthosting/State;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 433
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setClosedDate(Lcom/google/gdata/data/projecthosting/ClosedDate;)V
    .locals 1
    .param p1, "closedDate"    # Lcom/google/gdata/data/projecthosting/ClosedDate;

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const-class v0, Lcom/google/gdata/data/projecthosting/ClosedDate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setIssueId(Lcom/google/gdata/data/projecthosting/Id;)V
    .locals 1
    .param p1, "issueId"    # Lcom/google/gdata/data/projecthosting/Id;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-class v0, Lcom/google/gdata/data/projecthosting/Id;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMergedInto(Lcom/google/gdata/data/projecthosting/MergedInto;)V
    .locals 1
    .param p1, "mergedInto"    # Lcom/google/gdata/data/projecthosting/MergedInto;

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedInto;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOwner(Lcom/google/gdata/data/projecthosting/Owner;)V
    .locals 1
    .param p1, "owner"    # Lcom/google/gdata/data/projecthosting/Owner;

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const-class v0, Lcom/google/gdata/data/projecthosting/Owner;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSendEmail(Lcom/google/gdata/data/projecthosting/SendEmail;)V
    .locals 1
    .param p1, "sendEmail"    # Lcom/google/gdata/data/projecthosting/SendEmail;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    const-class v0, Lcom/google/gdata/data/projecthosting/SendEmail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStars(Lcom/google/gdata/data/projecthosting/Stars;)V
    .locals 1
    .param p1, "stars"    # Lcom/google/gdata/data/projecthosting/Stars;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const-class v0, Lcom/google/gdata/data/projecthosting/Stars;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setState(Lcom/google/gdata/data/projecthosting/State;)V
    .locals 1
    .param p1, "state"    # Lcom/google/gdata/data/projecthosting/State;

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    const-class v0, Lcom/google/gdata/data/projecthosting/State;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/projecthosting/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/projecthosting/Status;

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->removeExtension(Ljava/lang/Class;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{IssuesEntry "

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
    .line 447
    return-void
.end method
