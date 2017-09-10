.class public Lcom/google/gdata/data/analytics/AbPageVariationEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "AbPageVariationEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/AbPageVariationEntry;",
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
    const-class v0, Lcom/google/gdata/data/analytics/AbPageVariationEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/analytics/AbPageVariationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/analytics/AbPageVariationEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAbPageVariationId()Lcom/google/gdata/data/analytics/GwoAbPageVariationId;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    return-object v0
.end method

.method public getExperimentId()Lcom/google/gdata/data/analytics/GwoExperimentId;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    return-object v0
.end method

.method public hasAbPageVariationId()Z
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExperimentId()Z
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAbPageVariationId(Lcom/google/gdata/data/analytics/GwoAbPageVariationId;)V
    .locals 1
    .param p1, "abPageVariationId"    # Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-class v0, Lcom/google/gdata/data/analytics/GwoAbPageVariationId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExperimentId(Lcom/google/gdata/data/analytics/GwoExperimentId;)V
    .locals 1
    .param p1, "experimentId"    # Lcom/google/gdata/data/analytics/GwoExperimentId;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->removeExtension(Ljava/lang/Class;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/AbPageVariationEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AbPageVariationEntry "

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
    .line 121
    return-void
.end method
