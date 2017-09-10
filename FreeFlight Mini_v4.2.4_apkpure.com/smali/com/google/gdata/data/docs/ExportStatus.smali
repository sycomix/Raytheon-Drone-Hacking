.class public Lcom/google/gdata/data/docs/ExportStatus;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ExportStatus.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "status"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/docs/ExportStatus$Value;
    }
.end annotation


# static fields
.field private static final VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/docs/ExportStatus$Value;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "status"


# instance fields
.field private value:Lcom/google/gdata/data/docs/ExportStatus$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/docs/ExportStatus;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/docs/ExportStatus$Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/docs/ExportStatus$Value;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ExportStatus;->setValue(Lcom/google/gdata/data/docs/ExportStatus$Value;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ExportStatus;->setImmutable(Z)V

    .line 76
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 123
    const-class v1, Lcom/google/gdata/data/docs/ExportStatus;

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
    const/4 v1, 0x0

    .line 139
    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/docs/ExportStatus$Value;

    sget-object v5, Lcom/google/gdata/data/docs/ExportStatus;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ExportStatus$Value;

    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    .line 141
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 145
    if-ne p0, p1, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ExportStatus;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/google/gdata/data/docs/ExportStatus;

    .line 152
    .local v0, "other":Lcom/google/gdata/data/docs/ExportStatus;
    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    iget-object v2, v0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/ExportStatus;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/docs/ExportStatus$Value;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportStatus;->getValue()Lcom/google/gdata/data/docs/ExportStatus$Value;

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
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 158
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    if-eqz v1, :cond_0

    .line 159
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    invoke-virtual {v2}, Lcom/google/gdata/data/docs/ExportStatus$Value;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 161
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 132
    sget-object v0, Lcom/google/gdata/data/docs/ExportStatus;->VALUE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    invoke-interface {v0, v1}, Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/docs/ExportStatus$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/docs/ExportStatus$Value;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportStatus;->throwExceptionIfImmutable()V

    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ExportStatus value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

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
    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportStatus;->value:Lcom/google/gdata/data/docs/ExportStatus$Value;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method
