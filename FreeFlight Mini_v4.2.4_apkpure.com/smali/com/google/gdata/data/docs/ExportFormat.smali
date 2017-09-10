.class public Lcom/google/gdata/data/docs/ExportFormat;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ExportFormat.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "exportFormat"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/docs/ExportFormat$Source;
    }
.end annotation


# static fields
.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final SOURCE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/docs/ExportFormat$Source;",
            ">;"
        }
    .end annotation
.end field

.field private static final TARGET:Ljava/lang/String; = "target"

.field static final XML_NAME:Ljava/lang/String; = "exportFormat"


# instance fields
.field private source:Lcom/google/gdata/data/docs/ExportFormat$Source;

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/docs/ExportFormat;->SOURCE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/docs/ExportFormat$Source;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Lcom/google/gdata/data/docs/ExportFormat$Source;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ExportFormat;->setSource(Lcom/google/gdata/data/docs/ExportFormat$Source;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/docs/ExportFormat;->setTarget(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ExportFormat;->setImmutable(Z)V

    .line 90
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 168
    const-class v1, Lcom/google/gdata/data/docs/ExportFormat;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 170
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 171
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 172
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

    .line 184
    const-string v1, "source"

    const-class v3, Lcom/google/gdata/data/docs/ExportFormat$Source;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/docs/ExportFormat;->SOURCE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/ExportFormat$Source;

    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 186
    const-string/jumbo v0, "target"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ExportFormat;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 195
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/google/gdata/data/docs/ExportFormat;

    .line 198
    .local v0, "other":Lcom/google/gdata/data/docs/ExportFormat;
    iget-object v3, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ExportFormat;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/docs/ExportFormat;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSource()Lcom/google/gdata/data/docs/ExportFormat$Source;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportFormat;->getSource()Lcom/google/gdata/data/docs/ExportFormat$Source;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTarget()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportFormat;->getTarget()Ljava/lang/String;

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
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 205
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    if-eqz v1, :cond_0

    .line 206
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    invoke-virtual {v2}, Lcom/google/gdata/data/docs/ExportFormat$Source;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 209
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 211
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 177
    const-string v0, "source"

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    sget-object v2, Lcom/google/gdata/data/docs/ExportFormat;->SOURCE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 178
    const-string/jumbo v0, "target"

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setSource(Lcom/google/gdata/data/docs/ExportFormat$Source;)V
    .locals 0
    .param p1, "source"    # Lcom/google/gdata/data/docs/ExportFormat$Source;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportFormat;->throwExceptionIfImmutable()V

    .line 108
    iput-object p1, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    .line 109
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ExportFormat;->throwExceptionIfImmutable()V

    .line 136
    iput-object p1, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ExportFormat source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

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
    .line 150
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->source:Lcom/google/gdata/data/docs/ExportFormat$Source;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "source"

    invoke-static {v0}, Lcom/google/gdata/data/docs/ExportFormat;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/docs/ExportFormat;->target:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 154
    const-string/jumbo v0, "target"

    invoke-static {v0}, Lcom/google/gdata/data/docs/ExportFormat;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void
.end method
