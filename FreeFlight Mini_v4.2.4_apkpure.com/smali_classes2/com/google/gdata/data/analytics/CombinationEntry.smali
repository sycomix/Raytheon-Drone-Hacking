.class public Lcom/google/gdata/data/analytics/CombinationEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CombinationEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/CombinationEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 34
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
    .line 43
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 44
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 48
    const-class v0, Lcom/google/gdata/data/analytics/CombinationEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/analytics/CombinationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoComboActive;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/analytics/CombinationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoComboId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/analytics/CombinationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoComboString;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/CombinationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getComboActive()Lcom/google/gdata/data/analytics/GwoComboActive;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboActive;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoComboActive;

    return-object v0
.end method

.method public getComboId()Lcom/google/gdata/data/analytics/GwoComboId;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoComboId;

    return-object v0
.end method

.method public getComboString()Lcom/google/gdata/data/analytics/GwoComboString;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboString;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoComboString;

    return-object v0
.end method

.method public getExperimentId()Lcom/google/gdata/data/analytics/GwoExperimentId;
    .locals 1

    .prologue
    .line 161
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    return-object v0
.end method

.method public hasComboActive()Z
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboActive;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasComboId()Z
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasComboString()Z
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboString;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExperimentId()Z
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setComboActive(Lcom/google/gdata/data/analytics/GwoComboActive;)V
    .locals 1
    .param p1, "comboActive"    # Lcom/google/gdata/data/analytics/GwoComboActive;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboActive;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CombinationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setComboId(Lcom/google/gdata/data/analytics/GwoComboId;)V
    .locals 1
    .param p1, "comboId"    # Lcom/google/gdata/data/analytics/GwoComboId;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CombinationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setComboString(Lcom/google/gdata/data/analytics/GwoComboString;)V
    .locals 1
    .param p1, "comboString"    # Lcom/google/gdata/data/analytics/GwoComboString;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const-class v0, Lcom/google/gdata/data/analytics/GwoComboString;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CombinationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExperimentId(Lcom/google/gdata/data/analytics/GwoExperimentId;)V
    .locals 1
    .param p1, "experimentId"    # Lcom/google/gdata/data/analytics/GwoExperimentId;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CombinationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CombinationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CombinationEntry "

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
    .line 188
    return-void
.end method
