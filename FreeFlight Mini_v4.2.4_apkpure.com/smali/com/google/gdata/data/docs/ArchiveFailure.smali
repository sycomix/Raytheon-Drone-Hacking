.class public Lcom/google/gdata/data/docs/ArchiveFailure;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ArchiveFailure.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "archiveFailure"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field private static final REASON:Ljava/lang/String; = "reason"

.field static final XML_NAME:Ljava/lang/String; = "archiveFailure"


# instance fields
.field private reason:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveFailure;->setReason(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/docs/ArchiveFailure;->setValue(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveFailure;->setImmutable(Z)V

    .line 66
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 141
    const-class v1, Lcom/google/gdata/data/docs/ArchiveFailure;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 143
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 144
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 145
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
    .line 157
    const-string v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    if-ne p0, p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveFailure;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 167
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 169
    check-cast v0, Lcom/google/gdata/data/docs/ArchiveFailure;

    .line 170
    .local v0, "other":Lcom/google/gdata/data/docs/ArchiveFailure;
    iget-object v3, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ArchiveFailure;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ArchiveFailure;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveFailure;->getReason()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveFailure;->getValue()Ljava/lang/String;

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
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 177
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 181
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 183
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 150
    const-string v0, "reason"

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveFailure;->throwExceptionIfImmutable()V

    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveFailure;->throwExceptionIfImmutable()V

    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ArchiveFailure reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveFailure;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-void
.end method
