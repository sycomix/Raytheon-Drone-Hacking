.class public Lcom/google/gdata/data/gtt/DocumentSource;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "DocumentSource.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "documentSource"
    nsAlias = "gtt"
    nsUri = "http://schemas.google.com/gtt/2009/11"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/gtt/DocumentSource$Type;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/gtt/DocumentSource$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL:Ljava/lang/String; = "url"

.field static final XML_NAME:Ljava/lang/String; = "documentSource"


# instance fields
.field private type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/gtt/DocumentSource$1;

    invoke-direct {v0}, Lcom/google/gdata/data/gtt/DocumentSource$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/gtt/DocumentSource;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/gtt/DocumentSource$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/gtt/DocumentSource$Type;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentSource;->setType(Lcom/google/gdata/data/gtt/DocumentSource$Type;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/gtt/DocumentSource;->setUrl(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/gtt/DocumentSource;->setImmutable(Z)V

    .line 130
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 202
    const-class v1, Lcom/google/gdata/data/gtt/DocumentSource;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 204
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 206
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string/jumbo v1, "type"

    const-class v3, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/gtt/DocumentSource;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/gtt/DocumentSource$Type;

    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 220
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    if-ne p0, p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/gtt/DocumentSource;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 229
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 231
    check-cast v0, Lcom/google/gdata/data/gtt/DocumentSource;

    .line 232
    .local v0, "other":Lcom/google/gdata/data/gtt/DocumentSource;
    iget-object v3, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    iget-object v4, v0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    invoke-static {v3, v4}, Lcom/google/gdata/data/gtt/DocumentSource;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/gtt/DocumentSource;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getType()Lcom/google/gdata/data/gtt/DocumentSource$Type;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/gdata/data/gtt/DocumentSource;->getType()Lcom/google/gdata/data/gtt/DocumentSource$Type;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/gdata/data/gtt/DocumentSource;->getUrl()Ljava/lang/String;

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
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 239
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    if-eqz v1, :cond_0

    .line 240
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    invoke-virtual {v2}, Lcom/google/gdata/data/gtt/DocumentSource$Type;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 245
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 211
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    sget-object v2, Lcom/google/gdata/data/gtt/DocumentSource;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 212
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public setType(Lcom/google/gdata/data/gtt/DocumentSource$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/gdata/data/gtt/DocumentSource;->throwExceptionIfImmutable()V

    .line 148
    iput-object p1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    .line 149
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/gdata/data/gtt/DocumentSource;->throwExceptionIfImmutable()V

    .line 176
    iput-object p1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{DocumentSource type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->type:Lcom/google/gdata/data/gtt/DocumentSource$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/gtt/DocumentSource;->url:Ljava/lang/String;

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
    .line 190
    return-void
.end method
