.class public Lcom/google/gdata/data/docs/DocumentExportEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "DocumentExportEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/docs/DocumentExportEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 38
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
    .line 47
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addExportDocId(Lcom/google/gdata/data/docs/ExportDocId;)V
    .locals 1
    .param p1, "exportDocId"    # Lcom/google/gdata/data/docs/ExportDocId;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getExportDocIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public addQuery(Lcom/google/gdata/data/docs/QueryParameter;)V
    .locals 1
    .param p1, "query"    # Lcom/google/gdata/data/docs/QueryParameter;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getQueries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/ExportDocId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    const-class v1, Lcom/google/gdata/data/docs/DocumentExportRequestor;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    const-class v1, Lcom/google/gdata/data/docs/ObjectNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/docs/QueryParameter;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 63
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportEntry;

    const-class v1, Lcom/google/gdata/data/docs/ExportStatus;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getDocumentExportLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 221
    const-string v0, "http://schemas.google.com/docs/2007#export"

    const-string v1, "application/zip"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getExportDocIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/ExportDocId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v0, Lcom/google/gdata/data/docs/ExportDocId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExportRequestor()Lcom/google/gdata/data/docs/DocumentExportRequestor;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportRequestor;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/DocumentExportRequestor;

    return-object v0
.end method

.method public getObjectNumber()Lcom/google/gdata/data/docs/ObjectNumber;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/google/gdata/data/docs/ObjectNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ObjectNumber;

    return-object v0
.end method

.method public getQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/docs/QueryParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-class v0, Lcom/google/gdata/data/docs/QueryParameter;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/docs/ExportStatus;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/google/gdata/data/docs/ExportStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ExportStatus;

    return-object v0
.end method

.method public hasExportDocIds()Z
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/docs/ExportDocId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasExportRequestor()Z
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportRequestor;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasObjectNumber()Z
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/google/gdata/data/docs/ObjectNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQueries()Z
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/docs/QueryParameter;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/google/gdata/data/docs/ExportStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setExportRequestor(Lcom/google/gdata/data/docs/DocumentExportRequestor;)V
    .locals 1
    .param p1, "exportRequestor"    # Lcom/google/gdata/data/docs/DocumentExportRequestor;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    const-class v0, Lcom/google/gdata/data/docs/DocumentExportRequestor;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->removeExtension(Ljava/lang/Class;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/DocumentExportEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setObjectNumber(Lcom/google/gdata/data/docs/ObjectNumber;)V
    .locals 1
    .param p1, "objectNumber"    # Lcom/google/gdata/data/docs/ObjectNumber;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-class v0, Lcom/google/gdata/data/docs/ObjectNumber;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->removeExtension(Ljava/lang/Class;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/DocumentExportEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/docs/ExportStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/docs/ExportStatus;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    const-class v0, Lcom/google/gdata/data/docs/ExportStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/DocumentExportEntry;->removeExtension(Ljava/lang/Class;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/DocumentExportEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{DocumentExportEntry "

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
    .line 227
    return-void
.end method
