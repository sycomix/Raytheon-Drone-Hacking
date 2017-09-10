.class public Lcom/google/gdata/data/analytics/DataSource;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "DataSource.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "dataSource"
    nsAlias = "dxp"
    nsUri = "http://schemas.google.com/analytics/2009"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "dataSource"


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
    .line 162
    const-class v1, Lcom/google/gdata/data/analytics/DataSource;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 164
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 165
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 166
    return-object v0
.end method


# virtual methods
.method public addProperty(Lcom/google/gdata/data/analytics/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/google/gdata/data/analytics/Property;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataSource;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Property;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-static {v3, v2}, Lcom/google/gdata/data/analytics/TableId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/analytics/DataSource;

    invoke-static {v3, v2}, Lcom/google/gdata/data/analytics/TableName;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
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
    .line 65
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataSource;->hasProperties()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/DataSource;->getProperties()Ljava/util/List;

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

    .line 192
    .local v1, "property":Lcom/google/gdata/data/analytics/Property;
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 197
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
    .line 92
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/TableId;

    return-object v0
.end method

.method public getTableName()Lcom/google/gdata/data/analytics/TableName;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/google/gdata/data/analytics/TableName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/TableName;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTableId()Z
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTableName()Z
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/google/gdata/data/analytics/TableName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setTableId(Lcom/google/gdata/data/analytics/TableId;)V
    .locals 1
    .param p1, "tableId"    # Lcom/google/gdata/data/analytics/TableId;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const-class v0, Lcom/google/gdata/data/analytics/TableId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->removeExtension(Ljava/lang/Class;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataSource;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTableName(Lcom/google/gdata/data/analytics/TableName;)V
    .locals 1
    .param p1, "tableName"    # Lcom/google/gdata/data/analytics/TableName;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-class v0, Lcom/google/gdata/data/analytics/TableName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/DataSource;->removeExtension(Ljava/lang/Class;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/DataSource;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "{DataSource}"

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
