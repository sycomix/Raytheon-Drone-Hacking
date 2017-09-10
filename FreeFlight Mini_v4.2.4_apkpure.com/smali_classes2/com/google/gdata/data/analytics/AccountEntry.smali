.class public Lcom/google/gdata/data/analytics/AccountEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "AccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/AccountEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 36
    const-string v0, "analytics#account"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->setKind(Ljava/lang/String;)V

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
.method public addCustomVariable(Lcom/google/gdata/data/analytics/CustomVariable;)V
    .locals 1
    .param p1, "customVariable"    # Lcom/google/gdata/data/analytics/CustomVariable;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AccountEntry;->getCustomVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public addGoal(Lcom/google/gdata/data/analytics/Goal;)V
    .locals 1
    .param p1, "goal"    # Lcom/google/gdata/data/analytics/Goal;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AccountEntry;->getGoals()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addProperty(Lcom/google/gdata/data/analytics/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/google/gdata/data/analytics/Property;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AccountEntry;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/CustomVariable;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Goal;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 59
    new-instance v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Goal;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Goal;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/AnalyticsLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Property;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/analytics/AccountEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/analytics/TableId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getCustomVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/CustomVariable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Lcom/google/gdata/data/analytics/CustomVariable;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGoals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Goal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AccountEntry;->hasProperties()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/AccountEntry;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/analytics/Property;

    .line 207
    .local v1, "property":Lcom/google/gdata/data/analytics/Property;
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "property":Lcom/google/gdata/data/analytics/Property;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTableId()Lcom/google/gdata/data/analytics/TableId;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/TableId;

    return-object v0
.end method

.method public hasCustomVariables()Z
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/google/gdata/data/analytics/CustomVariable;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGoals()Z
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTableId()Z
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setTableId(Lcom/google/gdata/data/analytics/TableId;)V
    .locals 1
    .param p1, "tableId"    # Lcom/google/gdata/data/analytics/TableId;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/AccountEntry;->removeExtension(Ljava/lang/Class;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/AccountEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AccountEntry "

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
    .line 182
    return-void
.end method
