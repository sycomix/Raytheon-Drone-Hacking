.class public Lcom/google/gdata/data/analytics/ExperimentEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ExperimentEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/ExperimentEntry;",
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
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoControlScript;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoConversionScript;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoCoverage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoExperimentType;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoNumCombinations;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoNumSections;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoTrackingScript;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/analytics/ExperimentEntry;

    const-class v1, Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAnalyticsAccountId()Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    return-object v0
.end method

.method public getAutoPruneMode()Lcom/google/gdata/data/analytics/GwoAutoPruneMode;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    return-object v0
.end method

.method public getControlScript()Lcom/google/gdata/data/analytics/GwoControlScript;
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/analytics/GwoControlScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoControlScript;

    return-object v0
.end method

.method public getConversionScript()Lcom/google/gdata/data/analytics/GwoConversionScript;
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/google/gdata/data/analytics/GwoConversionScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoConversionScript;

    return-object v0
.end method

.method public getCoverage()Lcom/google/gdata/data/analytics/GwoCoverage;
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/google/gdata/data/analytics/GwoCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoCoverage;

    return-object v0
.end method

.method public getExperimentId()Lcom/google/gdata/data/analytics/GwoExperimentId;
    .locals 1

    .prologue
    .line 236
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    return-object v0
.end method

.method public getExperimentNotes()Lcom/google/gdata/data/analytics/GwoExperimentNotes;
    .locals 1

    .prologue
    .line 267
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    return-object v0
.end method

.method public getExperimentType()Lcom/google/gdata/data/analytics/GwoExperimentType;
    .locals 1

    .prologue
    .line 298
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoExperimentType;

    return-object v0
.end method

.method public getNumAbPageVariations()Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    return-object v0
.end method

.method public getNumCombinations()Lcom/google/gdata/data/analytics/GwoNumCombinations;
    .locals 1

    .prologue
    .line 362
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumCombinations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoNumCombinations;

    return-object v0
.end method

.method public getNumSections()Lcom/google/gdata/data/analytics/GwoNumSections;
    .locals 1

    .prologue
    .line 393
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumSections;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoNumSections;

    return-object v0
.end method

.method public getSourceExperimentId()Lcom/google/gdata/data/analytics/GwoSourceExperimentId;
    .locals 1

    .prologue
    .line 425
    const-class v0, Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/analytics/GwoStatus;
    .locals 1

    .prologue
    .line 459
    const-class v0, Lcom/google/gdata/data/analytics/GwoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoStatus;

    return-object v0
.end method

.method public getTrackingScript()Lcom/google/gdata/data/analytics/GwoTrackingScript;
    .locals 1

    .prologue
    .line 490
    const-class v0, Lcom/google/gdata/data/analytics/GwoTrackingScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoTrackingScript;

    return-object v0
.end method

.method public getVerificationCombo()Lcom/google/gdata/data/analytics/GwoVerificationCombo;
    .locals 1

    .prologue
    .line 522
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    return-object v0
.end method

.method public getVerificationComboCoverage()Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;
    .locals 1

    .prologue
    .line 554
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    return-object v0
.end method

.method public hasAnalyticsAccountId()Z
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAutoPruneMode()Z
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasControlScript()Z
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/google/gdata/data/analytics/GwoControlScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasConversionScript()Z
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/gdata/data/analytics/GwoConversionScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCoverage()Z
    .locals 1

    .prologue
    .line 227
    const-class v0, Lcom/google/gdata/data/analytics/GwoCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExperimentId()Z
    .locals 1

    .prologue
    .line 258
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExperimentNotes()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExperimentType()Z
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumAbPageVariations()Z
    .locals 1

    .prologue
    .line 353
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumCombinations()Z
    .locals 1

    .prologue
    .line 384
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumCombinations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNumSections()Z
    .locals 1

    .prologue
    .line 416
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumSections;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSourceExperimentId()Z
    .locals 1

    .prologue
    .line 450
    const-class v0, Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 481
    const-class v0, Lcom/google/gdata/data/analytics/GwoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTrackingScript()Z
    .locals 1

    .prologue
    .line 513
    const-class v0, Lcom/google/gdata/data/analytics/GwoTrackingScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasVerificationCombo()Z
    .locals 1

    .prologue
    .line 545
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasVerificationComboCoverage()Z
    .locals 1

    .prologue
    .line 580
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAnalyticsAccountId(Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;)V
    .locals 1
    .param p1, "analyticsAccountId"    # Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-class v0, Lcom/google/gdata/data/analytics/GwoAnalyticsAccountId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setAutoPruneMode(Lcom/google/gdata/data/analytics/GwoAutoPruneMode;)V
    .locals 1
    .param p1, "autoPruneMode"    # Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const-class v0, Lcom/google/gdata/data/analytics/GwoAutoPruneMode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setControlScript(Lcom/google/gdata/data/analytics/GwoControlScript;)V
    .locals 1
    .param p1, "controlScript"    # Lcom/google/gdata/data/analytics/GwoControlScript;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const-class v0, Lcom/google/gdata/data/analytics/GwoControlScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setConversionScript(Lcom/google/gdata/data/analytics/GwoConversionScript;)V
    .locals 1
    .param p1, "conversionScript"    # Lcom/google/gdata/data/analytics/GwoConversionScript;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-class v0, Lcom/google/gdata/data/analytics/GwoConversionScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCoverage(Lcom/google/gdata/data/analytics/GwoCoverage;)V
    .locals 1
    .param p1, "coverage"    # Lcom/google/gdata/data/analytics/GwoCoverage;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const-class v0, Lcom/google/gdata/data/analytics/GwoCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExperimentId(Lcom/google/gdata/data/analytics/GwoExperimentId;)V
    .locals 1
    .param p1, "experimentId"    # Lcom/google/gdata/data/analytics/GwoExperimentId;

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExperimentNotes(Lcom/google/gdata/data/analytics/GwoExperimentNotes;)V
    .locals 1
    .param p1, "experimentNotes"    # Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentNotes;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setExperimentType(Lcom/google/gdata/data/analytics/GwoExperimentType;)V
    .locals 1
    .param p1, "experimentType"    # Lcom/google/gdata/data/analytics/GwoExperimentType;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const-class v0, Lcom/google/gdata/data/analytics/GwoExperimentType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumAbPageVariations(Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;)V
    .locals 1
    .param p1, "numAbPageVariations"    # Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumAbPageVariations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumCombinations(Lcom/google/gdata/data/analytics/GwoNumCombinations;)V
    .locals 1
    .param p1, "numCombinations"    # Lcom/google/gdata/data/analytics/GwoNumCombinations;

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumCombinations;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNumSections(Lcom/google/gdata/data/analytics/GwoNumSections;)V
    .locals 1
    .param p1, "numSections"    # Lcom/google/gdata/data/analytics/GwoNumSections;

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    const-class v0, Lcom/google/gdata/data/analytics/GwoNumSections;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSourceExperimentId(Lcom/google/gdata/data/analytics/GwoSourceExperimentId;)V
    .locals 1
    .param p1, "sourceExperimentId"    # Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    const-class v0, Lcom/google/gdata/data/analytics/GwoSourceExperimentId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/analytics/GwoStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/analytics/GwoStatus;

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    const-class v0, Lcom/google/gdata/data/analytics/GwoStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTrackingScript(Lcom/google/gdata/data/analytics/GwoTrackingScript;)V
    .locals 1
    .param p1, "trackingScript"    # Lcom/google/gdata/data/analytics/GwoTrackingScript;

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    const-class v0, Lcom/google/gdata/data/analytics/GwoTrackingScript;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setVerificationCombo(Lcom/google/gdata/data/analytics/GwoVerificationCombo;)V
    .locals 1
    .param p1, "verificationCombo"    # Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationCombo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setVerificationComboCoverage(Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;)V
    .locals 1
    .param p1, "verificationComboCoverage"    # Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    const-class v0, Lcom/google/gdata/data/analytics/GwoVerificationComboCoverage;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ExperimentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ExperimentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ExperimentEntry "

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
    .line 585
    return-void
.end method
