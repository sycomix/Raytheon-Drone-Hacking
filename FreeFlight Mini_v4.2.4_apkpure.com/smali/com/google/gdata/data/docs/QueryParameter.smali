.class public Lcom/google/gdata/data/docs/QueryParameter;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "QueryParameter.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "query"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/docs/QueryParameter$Type;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/docs/QueryParameter$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "query"


# instance fields
.field private type:Lcom/google/gdata/data/docs/QueryParameter$Type;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/docs/QueryParameter$1;

    invoke-direct {v0}, Lcom/google/gdata/data/docs/QueryParameter$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/docs/QueryParameter;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/docs/QueryParameter$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/docs/QueryParameter$Type;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/QueryParameter;->setType(Lcom/google/gdata/data/docs/QueryParameter$Type;)V

    .line 131
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/docs/QueryParameter;->setValue(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/QueryParameter;->setImmutable(Z)V

    .line 133
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 211
    const-class v1, Lcom/google/gdata/data/docs/QueryParameter;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 213
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 214
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 215
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
    const/4 v2, 0x1

    .line 227
    const-string/jumbo v1, "type"

    const-class v3, Lcom/google/gdata/data/docs/QueryParameter$Type;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/docs/QueryParameter;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/QueryParameter$Type;

    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 229
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    if-ne p0, p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/QueryParameter;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 238
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 240
    check-cast v0, Lcom/google/gdata/data/docs/QueryParameter;

    .line 241
    .local v0, "other":Lcom/google/gdata/data/docs/QueryParameter;
    iget-object v3, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    iget-object v4, v0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/QueryParameter;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/QueryParameter;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getType()Lcom/google/gdata/data/docs/QueryParameter$Type;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/QueryParameter;->getType()Lcom/google/gdata/data/docs/QueryParameter$Type;

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
    .line 188
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/QueryParameter;->getValue()Ljava/lang/String;

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
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 248
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    if-eqz v1, :cond_0

    .line 249
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    invoke-virtual {v2}, Lcom/google/gdata/data/docs/QueryParameter$Type;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 252
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 254
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 220
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    sget-object v2, Lcom/google/gdata/data/docs/QueryParameter;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 221
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public setType(Lcom/google/gdata/data/docs/QueryParameter$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/docs/QueryParameter$Type;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/QueryParameter;->throwExceptionIfImmutable()V

    .line 151
    iput-object p1, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    .line 152
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/QueryParameter;->throwExceptionIfImmutable()V

    .line 179
    iput-object p1, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{QueryParameter type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

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
    .line 193
    iget-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->type:Lcom/google/gdata/data/docs/QueryParameter$Type;

    if-nez v0, :cond_0

    .line 194
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/google/gdata/data/docs/QueryParameter;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/docs/QueryParameter;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 197
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/docs/QueryParameter;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method
