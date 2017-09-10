.class public Lcom/google/gdata/data/docs/MaxUploadSize;
.super Lcom/google/gdata/data/AbstractExtension;
.source "MaxUploadSize.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "maxUploadSize"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field private static final KIND:Ljava/lang/String; = "kind"

.field static final XML_NAME:Ljava/lang/String; = "maxUploadSize"


# instance fields
.field private kind:Ljava/lang/String;

.field private value:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MaxUploadSize;->setKind(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/docs/MaxUploadSize;->setValue(Ljava/lang/Long;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/MaxUploadSize;->setImmutable(Z)V

    .line 66
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 147
    const-class v1, Lcom/google/gdata/data/docs/MaxUploadSize;

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
    const-string v0, "kind"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

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
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/MaxUploadSize;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 173
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/google/gdata/data/docs/MaxUploadSize;

    .line 176
    .local v0, "other":Lcom/google/gdata/data/docs/MaxUploadSize;
    iget-object v3, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/MaxUploadSize;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/MaxUploadSize;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public hasKind()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MaxUploadSize;->getKind()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MaxUploadSize;->getValue()Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 187
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

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
    const-string v0, "kind"

    iget-object v1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MaxUploadSize;->throwExceptionIfImmutable()V

    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setValue(Ljava/lang/Long;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/MaxUploadSize;->throwExceptionIfImmutable()V

    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{MaxUploadSize kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->kind:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "kind"

    invoke-static {v0}, Lcom/google/gdata/data/docs/MaxUploadSize;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text content must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/docs/MaxUploadSize;->value:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    return-void
.end method
