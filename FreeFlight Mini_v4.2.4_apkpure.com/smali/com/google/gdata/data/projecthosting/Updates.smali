.class public Lcom/google/gdata/data/projecthosting/Updates;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Updates.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "updates"
    nsAlias = "issues"
    nsUri = "http://schemas.google.com/projecthosting/issues/2009"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "updates"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 44
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 281
    const-class v1, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 283
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 284
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 285
    return-object v0
.end method


# virtual methods
.method public addBlockedOnUpdate(Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;)V
    .locals 1
    .param p1, "blockedOnUpdate"    # Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/Updates;->getBlockedOnUpdates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public addCcUpdate(Lcom/google/gdata/data/projecthosting/CcUpdate;)V
    .locals 1
    .param p1, "ccUpdate"    # Lcom/google/gdata/data/projecthosting/CcUpdate;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/Updates;->getCcUpdates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public addLabel(Lcom/google/gdata/data/projecthosting/Label;)V
    .locals 1
    .param p1, "label"    # Lcom/google/gdata/data/projecthosting/Label;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/Updates;->getLabels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/CcUpdate;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/Label;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    const-class v1, Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    const-class v1, Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    const-class v1, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/google/gdata/data/projecthosting/Updates;

    const-class v1, Lcom/google/gdata/data/projecthosting/Summary;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getBlockedOnUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCcUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/CcUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-class v0, Lcom/google/gdata/data/projecthosting/CcUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

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
    .line 122
    const-class v0, Lcom/google/gdata/data/projecthosting/Label;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMergedIntoUpdate()Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    return-object v0
.end method

.method public getOwnerUpdate()Lcom/google/gdata/data/projecthosting/OwnerUpdate;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/projecthosting/Status;
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Status;

    return-object v0
.end method

.method public getSummary()Lcom/google/gdata/data/projecthosting/Summary;
    .locals 1

    .prologue
    .line 242
    const-class v0, Lcom/google/gdata/data/projecthosting/Summary;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Summary;

    return-object v0
.end method

.method public hasBlockedOnUpdates()Z
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/google/gdata/data/projecthosting/BlockedOnUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCcUpdates()Z
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/projecthosting/CcUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/projecthosting/Label;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMergedIntoUpdate()Z
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOwnerUpdate()Z
    .locals 1

    .prologue
    .line 202
    const-class v0, Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 233
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 264
    const-class v0, Lcom/google/gdata/data/projecthosting/Summary;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setMergedIntoUpdate(Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;)V
    .locals 1
    .param p1, "mergedIntoUpdate"    # Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const-class v0, Lcom/google/gdata/data/projecthosting/MergedIntoUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->removeExtension(Ljava/lang/Class;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Updates;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOwnerUpdate(Lcom/google/gdata/data/projecthosting/OwnerUpdate;)V
    .locals 1
    .param p1, "ownerUpdate"    # Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const-class v0, Lcom/google/gdata/data/projecthosting/OwnerUpdate;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->removeExtension(Ljava/lang/Class;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Updates;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/projecthosting/Status;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/projecthosting/Status;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const-class v0, Lcom/google/gdata/data/projecthosting/Status;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->removeExtension(Ljava/lang/Class;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Updates;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSummary(Lcom/google/gdata/data/projecthosting/Summary;)V
    .locals 1
    .param p1, "summary"    # Lcom/google/gdata/data/projecthosting/Summary;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const-class v0, Lcom/google/gdata/data/projecthosting/Summary;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Updates;->removeExtension(Ljava/lang/Class;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Updates;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string/jumbo v0, "{Updates}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
