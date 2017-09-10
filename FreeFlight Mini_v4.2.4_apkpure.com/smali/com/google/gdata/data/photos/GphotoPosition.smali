.class public Lcom/google/gdata/data/photos/GphotoPosition;
.super Lcom/google/gdata/data/AbstractExtension;
.source "GphotoPosition.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "position"
    nsAlias = "gphoto"
    nsUri = "http://schemas.google.com/photos/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "position"


# instance fields
.field private value:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoPosition;->setValue(Ljava/lang/Float;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoPosition;->setImmutable(Z)V

    .line 58
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 102
    const-class v1, Lcom/google/gdata/data/photos/GphotoPosition;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 104
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 106
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
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeFloat(Ljava/lang/String;Z)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-ne p0, p1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoPosition;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/gdata/data/photos/GphotoPosition;

    .line 129
    .local v0, "other":Lcom/google/gdata/data/photos/GphotoPosition;
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    iget-object v2, v0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    invoke-static {v1, v2}, Lcom/google/gdata/data/photos/GphotoPosition;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoPosition;->getValue()Ljava/lang/Float;

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
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 135
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 136
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 138
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setValue(Ljava/lang/Float;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoPosition;->throwExceptionIfImmutable()V

    .line 76
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GphotoPosition value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoPosition;->value:Ljava/lang/Float;

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
    .locals 0

    .prologue
    .line 90
    return-void
.end method
