.class public Lcom/google/gdata/data/projecthosting/State;
.super Lcom/google/gdata/data/AbstractExtension;
.source "State.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "state"
    nsAlias = "issues"
    nsUri = "http://schemas.google.com/projecthosting/issues/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/projecthosting/State$Value;
    }
.end annotation


# static fields
.field private static final VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/projecthosting/State$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "state"


# instance fields
.field private value:Lcom/google/gdata/data/projecthosting/State$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/projecthosting/State;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/projecthosting/State$Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/projecthosting/State$Value;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/State;->setValue(Lcom/google/gdata/data/projecthosting/State$Value;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/State;->setImmutable(Z)V

    .line 74
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 121
    const-class v1, Lcom/google/gdata/data/projecthosting/State;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 123
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 124
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 125
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

    .line 137
    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/projecthosting/State$Value;

    sget-object v5, Lcom/google/gdata/data/projecthosting/State;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/State$Value;

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 139
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 143
    if-ne p0, p1, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/State;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/google/gdata/data/projecthosting/State;

    .line 150
    .local v0, "other":Lcom/google/gdata/data/projecthosting/State;
    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    iget-object v2, v0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    invoke-static {v1, v2}, Lcom/google/gdata/data/projecthosting/State;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/projecthosting/State$Value;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/State;->getValue()Lcom/google/gdata/data/projecthosting/State$Value;

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
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 156
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    if-eqz v1, :cond_0

    .line 157
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    invoke-virtual {v2}, Lcom/google/gdata/data/projecthosting/State$Value;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 159
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 130
    sget-object v0, Lcom/google/gdata/data/projecthosting/State;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    invoke-interface {v0, v1}, Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/projecthosting/State$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/projecthosting/State$Value;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/State;->throwExceptionIfImmutable()V

    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{State value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

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
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/State;->value:Lcom/google/gdata/data/projecthosting/State$Value;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method
