.class public Lcom/google/gdata/data/docs/ArchiveConversion;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ArchiveConversion.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "archiveConversion"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final TARGET:Ljava/lang/String; = "target"

.field static final XML_NAME:Ljava/lang/String; = "archiveConversion"


# instance fields
.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveConversion;->setSource(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/docs/ArchiveConversion;->setTarget(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveConversion;->setImmutable(Z)V

    .line 69
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 147
    const-class v1, Lcom/google/gdata/data/docs/ArchiveConversion;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 149
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 150
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 151
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

    .line 163
    const-string v0, "source"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "target"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveConversion;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 173
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/google/gdata/data/docs/ArchiveConversion;

    .line 176
    .local v0, "other":Lcom/google/gdata/data/docs/ArchiveConversion;
    iget-object v3, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ArchiveConversion;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ArchiveConversion;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveConversion;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveConversion;->getTarget()Ljava/lang/String;

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
    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 183
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 189
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 156
    const-string v0, "source"

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "target"

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveConversion;->throwExceptionIfImmutable()V

    .line 87
    iput-object p1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveConversion;->throwExceptionIfImmutable()V

    .line 115
    iput-object p1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ArchiveConversion source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

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
    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "source"

    invoke-static {v0}, Lcom/google/gdata/data/docs/ArchiveConversion;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveConversion;->target:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "target"

    invoke-static {v0}, Lcom/google/gdata/data/docs/ArchiveConversion;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void
.end method
