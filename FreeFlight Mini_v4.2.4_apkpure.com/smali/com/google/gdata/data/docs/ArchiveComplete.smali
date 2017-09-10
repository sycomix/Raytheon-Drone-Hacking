.class public Lcom/google/gdata/data/docs/ArchiveComplete;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ArchiveComplete.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "archiveComplete"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "archiveComplete"


# instance fields
.field private value:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveComplete;->setValue(Lcom/google/gdata/data/DateTime;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ArchiveComplete;->setImmutable(Z)V

    .line 59
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 106
    const-class v1, Lcom/google/gdata/data/docs/ArchiveComplete;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 108
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 109
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 110
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
    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    .line 122
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-ne p0, p1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ArchiveComplete;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/google/gdata/data/docs/ArchiveComplete;

    .line 133
    .local v0, "other":Lcom/google/gdata/data/docs/ArchiveComplete;
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    iget-object v2, v0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/ArchiveComplete;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveComplete;->getValue()Lcom/google/gdata/data/DateTime;

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
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 139
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    if-eqz v1, :cond_0

    .line 140
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 142
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ArchiveComplete;->throwExceptionIfImmutable()V

    .line 77
    iput-object p1, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ArchiveComplete value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

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
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/docs/ArchiveComplete;->value:Lcom/google/gdata/data/DateTime;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method
