.class public Lcom/google/gdata/data/analytics/Segment;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Segment.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "segment"
    nsAlias = "dxp"
    nsUri = "http://schemas.google.com/analytics/2009"
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field static final XML_NAME:Ljava/lang/String; = "segment"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Segment;->setId(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Segment;->setName(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->setImmutable(Z)V

    .line 72
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 212
    const-class v1, Lcom/google/gdata/data/analytics/Segment;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 214
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 215
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public addProperty(Lcom/google/gdata/data/analytics/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/google/gdata/data/analytics/Property;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    .line 229
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 76
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    const-class v1, Lcom/google/gdata/data/analytics/Definition;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/analytics/Property;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getDefinition()Lcom/google/gdata/data/analytics/Definition;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/analytics/Definition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Definition;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

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
    .line 177
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->hasProperties()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->getProperties()Ljava/util/List;

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

    .line 255
    .local v1, "property":Lcom/google/gdata/data/analytics/Property;
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "property":Lcom/google/gdata/data/analytics/Property;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasDefinition()Z
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/google/gdata/data/analytics/Definition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 221
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public setDefinition(Lcom/google/gdata/data/analytics/Definition;)V
    .locals 1
    .param p1, "definition"    # Lcom/google/gdata/data/analytics/Definition;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    const-class v0, Lcom/google/gdata/data/analytics/Definition;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Segment;->removeExtension(Ljava/lang/Class;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Segment;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->throwExceptionIfImmutable()V

    .line 131
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Segment;->throwExceptionIfImmutable()V

    .line 159
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Segment id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Segment;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Segment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method
