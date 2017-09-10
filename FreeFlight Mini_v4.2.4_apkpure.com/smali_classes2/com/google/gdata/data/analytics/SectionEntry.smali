.class public Lcom/google/gdata/data/analytics/SectionEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SectionEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/SectionEntry;",
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
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoNumVariations;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/analytics/SectionEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoSectionId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getExperimentId()Lcom/google/gdata/data/analytics/GwoExperimentId;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    return-object v0
.end method

.method public getNumVariations()Lcom/google/gdata/data/analytics/GwoNumVariations;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoNumVariations;

    return-object v0
.end method

.method public getSectionBeginScript()Lcom/google/gdata/data/analytics/GwoSectionBeginScript;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    return-object v0
.end method

.method public getSectionEndScript()Lcom/google/gdata/data/analytics/GwoSectionEndScript;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    return-object v0
.end method

.method public getSectionId()Lcom/google/gdata/data/analytics/GwoSectionId;
    .locals 1

    .prologue
    .line 194
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoSectionId;

    return-object v0
.end method

.method public hasExperimentId()Z
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumVariations()Z
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSectionBeginScript()Z
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSectionEndScript()Z
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSectionId()Z
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setExperimentId(Lcom/google/gdata/data/analytics/GwoExperimentId;)V
    .locals 1
    .param p1, "experimentId"    # Lcom/google/gdata/data/analytics/GwoExperimentId;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/SectionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumVariations(Lcom/google/gdata/data/analytics/GwoNumVariations;)V
    .locals 1
    .param p1, "numVariations"    # Lcom/google/gdata/data/analytics/GwoNumVariations;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/SectionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSectionBeginScript(Lcom/google/gdata/data/analytics/GwoSectionBeginScript;)V
    .locals 1
    .param p1, "sectionBeginScript"    # Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionBeginScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/SectionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSectionEndScript(Lcom/google/gdata/data/analytics/GwoSectionEndScript;)V
    .locals 1
    .param p1, "sectionEndScript"    # Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionEndScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/SectionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSectionId(Lcom/google/gdata/data/analytics/GwoSectionId;)V
    .locals 1
    .param p1, "sectionId"    # Lcom/google/gdata/data/analytics/GwoSectionId;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const-class v0, Lcom/google/gdata/data/analytics/GwoSectionId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/SectionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/SectionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{SectionEntry "

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
    .line 221
    return-void
.end method
