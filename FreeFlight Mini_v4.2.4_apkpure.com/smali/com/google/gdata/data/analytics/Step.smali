.class public Lcom/google/gdata/data/analytics/Step;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Step.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "step"
    nsAlias = "ga"
    nsUri = "http://schemas.google.com/ga/2009"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final PATH:Ljava/lang/String; = "path"

.field static final XML_NAME:Ljava/lang/String; = "step"


# instance fields
.field private name:Ljava/lang/String;

.field private number:Ljava/lang/Integer;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/Integer;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Step;->setName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Step;->setNumber(Ljava/lang/Integer;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/Step;->setPath(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Step;->setImmutable(Z)V

    .line 77
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 186
    const-class v1, Lcom/google/gdata/data/analytics/Step;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 188
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 190
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 203
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    .line 204
    const-string v0, "number"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    .line 205
    const-string v0, "path"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    if-ne p0, p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Step;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 214
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 216
    check-cast v0, Lcom/google/gdata/data/analytics/Step;

    .line 217
    .local v0, "other":Lcom/google/gdata/data/analytics/Step;
    iget-object v3, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Step;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Step;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Step;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPath()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 225
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 226
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 229
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 232
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 234
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 195
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "number"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v0, "path"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionIfImmutable()V

    .line 95
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Integer;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionIfImmutable()V

    .line 123
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    .line 124
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionIfImmutable()V

    .line 151
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Step name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->number:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "number"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Step;->path:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 172
    const-string v0, "path"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Step;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 174
    :cond_2
    return-void
.end method
