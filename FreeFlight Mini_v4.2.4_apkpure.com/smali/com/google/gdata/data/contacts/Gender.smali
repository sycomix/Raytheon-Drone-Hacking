.class public Lcom/google/gdata/data/contacts/Gender;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Gender.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "gender"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/Gender$Value;
    }
.end annotation


# static fields
.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/Gender$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "gender"


# instance fields
.field private value:Lcom/google/gdata/data/contacts/Gender$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/Gender;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/contacts/Gender$Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/contacts/Gender$Value;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Gender;->setValue(Lcom/google/gdata/data/contacts/Gender$Value;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Gender;->setImmutable(Z)V

    .line 76
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 123
    const-class v1, Lcom/google/gdata/data/contacts/Gender;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 125
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 127
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
    .line 138
    const-string/jumbo v1, "value"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/contacts/Gender$Value;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/contacts/Gender;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Gender$Value;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 140
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    if-ne p0, p1, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 151
    :goto_0
    return v1

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Gender;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/google/gdata/data/contacts/Gender;

    .line 151
    .local v0, "other":Lcom/google/gdata/data/contacts/Gender;
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    iget-object v2, v0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    invoke-static {v1, v2}, Lcom/google/gdata/data/contacts/Gender;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/contacts/Gender$Value;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Gender;->getValue()Lcom/google/gdata/data/contacts/Gender$Value;

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
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 157
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    if-eqz v1, :cond_0

    .line 158
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    invoke-virtual {v2}, Lcom/google/gdata/data/contacts/Gender$Value;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 132
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    sget-object v2, Lcom/google/gdata/data/contacts/Gender;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 133
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/contacts/Gender$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/contacts/Gender$Value;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Gender;->throwExceptionIfImmutable()V

    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Gender value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

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
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Gender;->value:Lcom/google/gdata/data/contacts/Gender$Value;

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/Gender;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
