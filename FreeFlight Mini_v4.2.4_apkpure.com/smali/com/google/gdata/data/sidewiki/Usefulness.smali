.class public Lcom/google/gdata/data/sidewiki/Usefulness;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Usefulness.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "usefulness"
    nsAlias = "sidewiki"
    nsUri = "http://schemas.google.com/sidewiki/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/sidewiki/Usefulness$Value;
    }
.end annotation


# static fields
.field private static final VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/sidewiki/Usefulness$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "usefulness"


# instance fields
.field private value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/data/sidewiki/Usefulness$1;

    invoke-direct {v0}, Lcom/google/gdata/data/sidewiki/Usefulness$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/sidewiki/Usefulness;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/sidewiki/Usefulness$Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/Usefulness;->setValue(Lcom/google/gdata/data/sidewiki/Usefulness$Value;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sidewiki/Usefulness;->setImmutable(Z)V

    .line 92
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 139
    const-class v1, Lcom/google/gdata/data/sidewiki/Usefulness;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 141
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 143
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
    const/4 v1, 0x0

    .line 155
    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    sget-object v5, Lcom/google/gdata/data/sidewiki/Usefulness;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    iput-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-ne p0, p1, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sidewiki/Usefulness;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/gdata/data/sidewiki/Usefulness;

    .line 168
    .local v0, "other":Lcom/google/gdata/data/sidewiki/Usefulness;
    iget-object v1, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    iget-object v2, v0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    invoke-static {v1, v2}, Lcom/google/gdata/data/sidewiki/Usefulness;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/sidewiki/Usefulness$Value;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/gdata/data/sidewiki/Usefulness;->getValue()Lcom/google/gdata/data/sidewiki/Usefulness$Value;

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
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 174
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    if-eqz v1, :cond_0

    .line 175
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    invoke-virtual {v2}, Lcom/google/gdata/data/sidewiki/Usefulness$Value;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 148
    sget-object v0, Lcom/google/gdata/data/sidewiki/Usefulness;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    iget-object v1, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    invoke-interface {v0, v1}, Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/sidewiki/Usefulness$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/sidewiki/Usefulness;->throwExceptionIfImmutable()V

    .line 110
    iput-object p1, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Usefulness value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

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
    .line 124
    iget-object v0, p0, Lcom/google/gdata/data/sidewiki/Usefulness;->value:Lcom/google/gdata/data/sidewiki/Usefulness$Value;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method
