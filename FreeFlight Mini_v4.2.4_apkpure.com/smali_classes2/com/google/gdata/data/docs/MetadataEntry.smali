.class public Lcom/google/gdata/data/docs/MetadataEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "MetadataEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#metadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/docs/MetadataEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#metadata"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#metadata"

    const-string v3, "metadata"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/MetadataEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/MetadataEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
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
    .line 63
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 64
    return-void
.end method


# virtual methods
.method public addAdditionalRoleInfo(Lcom/google/gdata/data/docs/AdditionalRoleInfo;)V
    .locals 1
    .param p1, "additionalRoleInfo"    # Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getAdditionalRoleInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addExportFormat(Lcom/google/gdata/data/docs/ExportFormat;)V
    .locals 1
    .param p1, "exportFormat"    # Lcom/google/gdata/data/docs/ExportFormat;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExportFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public addFeature(Lcom/google/gdata/data/docs/Feature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/gdata/data/docs/Feature;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public addImportFormat(Lcom/google/gdata/data/docs/ImportFormat;)V
    .locals 1
    .param p1, "importFormat"    # Lcom/google/gdata/data/docs/ImportFormat;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getImportFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public addMaxUploadSize(Lcom/google/gdata/data/docs/MaxUploadSize;)V
    .locals 1
    .param p1, "maxUploadSize"    # Lcom/google/gdata/data/docs/MaxUploadSize;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MetadataEntry;->getMaxUploadSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 74
    new-instance v0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/docs/AdditionalRoleInfo;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/ExportFormat;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/Feature;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    new-instance v0, Lcom/google/gdata/data/docs/Feature;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/Feature;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/docs/Feature;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 80
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/ImportFormat;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 82
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/docs/LargestChangestamp;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/MaxUploadSize;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 86
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    const-class v1, Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    const-class v1, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    const-class v1, Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/google/gdata/data/docs/MetadataEntry;

    const-class v1, Lcom/google/gdata/data/docs/RemainingChangestamps;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAdditionalRoleInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/AdditionalRoleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExportFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ExportFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const-class v0, Lcom/google/gdata/data/docs/ExportFormat;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const-class v0, Lcom/google/gdata/data/docs/Feature;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImportFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ImportFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const-class v0, Lcom/google/gdata/data/docs/ImportFormat;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLargestChangestamp()Lcom/google/gdata/data/docs/LargestChangestamp;
    .locals 1

    .prologue
    .line 206
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    return-object v0
.end method

.method public getMaxUploadSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/MaxUploadSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    const-class v0, Lcom/google/gdata/data/docs/MaxUploadSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQuotaBytesTotal()Lcom/google/gdata/data/extensions/QuotaBytesTotal;
    .locals 1

    .prologue
    .line 264
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    return-object v0
.end method

.method public getQuotaBytesUsed()Lcom/google/gdata/data/extensions/QuotaBytesUsed;
    .locals 1

    .prologue
    .line 295
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    return-object v0
.end method

.method public getQuotaBytesUsedInTrash()Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;
    .locals 1

    .prologue
    .line 326
    const-class v0, Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    return-object v0
.end method

.method public getRemainingChangestamps()Lcom/google/gdata/data/docs/RemainingChangestamps;
    .locals 1

    .prologue
    .line 359
    const-class v0, Lcom/google/gdata/data/docs/RemainingChangestamps;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/RemainingChangestamps;

    return-object v0
.end method

.method public hasAdditionalRoleInfos()Z
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/google/gdata/data/docs/AdditionalRoleInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExportFormats()Z
    .locals 1

    .prologue
    .line 143
    const-class v0, Lcom/google/gdata/data/docs/ExportFormat;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFeatures()Z
    .locals 1

    .prologue
    .line 170
    const-class v0, Lcom/google/gdata/data/docs/Feature;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasImportFormats()Z
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/google/gdata/data/docs/ImportFormat;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLargestChangestamp()Z
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMaxUploadSizes()Z
    .locals 1

    .prologue
    .line 255
    const-class v0, Lcom/google/gdata/data/docs/MaxUploadSize;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaBytesTotal()Z
    .locals 1

    .prologue
    .line 286
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaBytesUsed()Z
    .locals 1

    .prologue
    .line 317
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaBytesUsedInTrash()Z
    .locals 1

    .prologue
    .line 350
    const-class v0, Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRemainingChangestamps()Z
    .locals 1

    .prologue
    .line 383
    const-class v0, Lcom/google/gdata/data/docs/RemainingChangestamps;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setLargestChangestamp(Lcom/google/gdata/data/docs/LargestChangestamp;)V
    .locals 1
    .param p1, "largestChangestamp"    # Lcom/google/gdata/data/docs/LargestChangestamp;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->removeExtension(Ljava/lang/Class;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MetadataEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaBytesTotal(Lcom/google/gdata/data/extensions/QuotaBytesTotal;)V
    .locals 1
    .param p1, "quotaBytesTotal"    # Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesTotal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->removeExtension(Ljava/lang/Class;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MetadataEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaBytesUsed(Lcom/google/gdata/data/extensions/QuotaBytesUsed;)V
    .locals 1
    .param p1, "quotaBytesUsed"    # Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const-class v0, Lcom/google/gdata/data/extensions/QuotaBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->removeExtension(Ljava/lang/Class;)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MetadataEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaBytesUsedInTrash(Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;)V
    .locals 1
    .param p1, "quotaBytesUsedInTrash"    # Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const-class v0, Lcom/google/gdata/data/docs/QuotaBytesUsedInTrash;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->removeExtension(Ljava/lang/Class;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MetadataEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRemainingChangestamps(Lcom/google/gdata/data/docs/RemainingChangestamps;)V
    .locals 1
    .param p1, "remainingChangestamps"    # Lcom/google/gdata/data/docs/RemainingChangestamps;

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    const-class v0, Lcom/google/gdata/data/docs/RemainingChangestamps;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MetadataEntry;->removeExtension(Ljava/lang/Class;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MetadataEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{MetadataEntry "

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
    .line 388
    return-void
.end method
