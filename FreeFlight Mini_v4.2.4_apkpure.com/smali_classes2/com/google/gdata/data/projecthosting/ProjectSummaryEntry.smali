.class public Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ProjectSummaryEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;",
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
.method public addProjectLabel(Lcom/google/gdata/data/projecthosting/ProjectLabel;)V
    .locals 1
    .param p1, "projectLabel"    # Lcom/google/gdata/data/projecthosting/ProjectLabel;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getProjectLabels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addRepository(Lcom/google/gdata/data/projecthosting/Repository;)V
    .locals 1
    .param p1, "repository"    # Lcom/google/gdata/data/projecthosting/Repository;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getRepositories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;

    const-class v1, Lcom/google/gdata/data/projecthosting/Description;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/IssuesLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/ProjectLabel;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/projecthosting/Repository;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    new-instance v0, Lcom/google/gdata/data/projecthosting/Repository;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/Repository;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/projecthosting/Repository;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getDescription()Lcom/google/gdata/data/projecthosting/Description;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/projecthosting/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Description;

    return-object v0
.end method

.method public getProjectLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/ProjectLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectLabel;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 157
    const-string v0, "related"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getRepositories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/projecthosting/Repository;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const-class v0, Lcom/google/gdata/data/projecthosting/Repository;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/projecthosting/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasProjectLabels()Z
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/data/projecthosting/ProjectLabel;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRepositories()Z
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/google/gdata/data/projecthosting/Repository;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setDescription(Lcom/google/gdata/data/projecthosting/Description;)V
    .locals 1
    .param p1, "description"    # Lcom/google/gdata/data/projecthosting/Description;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-class v0, Lcom/google/gdata/data/projecthosting/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->removeExtension(Ljava/lang/Class;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/ProjectSummaryEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ProjectSummaryEntry "

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
    .line 162
    return-void
.end method
