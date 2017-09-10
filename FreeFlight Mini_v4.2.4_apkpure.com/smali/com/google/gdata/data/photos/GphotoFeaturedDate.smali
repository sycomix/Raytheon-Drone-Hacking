.class public Lcom/google/gdata/data/photos/GphotoFeaturedDate;
.super Lcom/google/gdata/data/AbstractExtension;
.source "GphotoFeaturedDate.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "featuredDate"
    nsAlias = "gphoto"
    nsUri = "http://schemas.google.com/photos/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "featuredDate"


# instance fields
.field private value:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->setValue(Ljava/lang/Long;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->setImmutable(Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;-><init>(Ljava/lang/Long;)V

    .line 151
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 104
    const-class v1, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 106
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 108
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
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    .line 120
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 124
    if-ne p0, p1, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;

    .line 131
    .local v0, "other":Lcom/google/gdata/data/photos/GphotoFeaturedDate;
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    iget-object v2, v0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->getValue()Ljava/lang/Long;

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
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 137
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 138
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 140
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setValue(Ljava/lang/Long;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->throwExceptionIfImmutable()V

    .line 78
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GphotoFeaturedDate value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoFeaturedDate;->value:Ljava/lang/Long;

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
    .line 92
    return-void
.end method
