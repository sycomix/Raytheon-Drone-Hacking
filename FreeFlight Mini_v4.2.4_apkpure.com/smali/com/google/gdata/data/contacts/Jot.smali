.class public Lcom/google/gdata/data/contacts/Jot;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Jot.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "jot"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/Jot$Rel;
    }
.end annotation


# static fields
.field private static final REL:Ljava/lang/String; = "rel"

.field private static final REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/Jot$Rel;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "jot"


# instance fields
.field private rel:Lcom/google/gdata/data/contacts/Jot$Rel;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/contacts/Jot$Rel;Ljava/lang/String;)V
    .locals 1
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/Jot$Rel;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Jot;->setRel(Lcom/google/gdata/data/contacts/Jot$Rel;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/Jot;->setValue(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Jot;->setImmutable(Z)V

    .line 90
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 165
    const-class v1, Lcom/google/gdata/data/contacts/Jot;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 167
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 169
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
    const/4 v4, 0x0

    .line 181
    const-string v1, "rel"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/contacts/Jot$Rel;

    sget-object v5, Lcom/google/gdata/data/contacts/Jot;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v4, v0}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    if-ne p0, p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Jot;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 192
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 194
    check-cast v0, Lcom/google/gdata/data/contacts/Jot;

    .line 195
    .local v0, "other":Lcom/google/gdata/data/contacts/Jot;
    iget-object v3, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/Jot;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/Jot;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getRel()Lcom/google/gdata/data/contacts/Jot$Rel;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Jot;->getRel()Lcom/google/gdata/data/contacts/Jot$Rel;

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
    .line 145
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Jot;->getValue()Ljava/lang/String;

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
    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 202
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    if-eqz v1, :cond_0

    .line 203
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    invoke-virtual {v2}, Lcom/google/gdata/data/contacts/Jot$Rel;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 206
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 208
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 174
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    sget-object v2, Lcom/google/gdata/data/contacts/Jot;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 175
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setRel(Lcom/google/gdata/data/contacts/Jot$Rel;)V
    .locals 0
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/Jot$Rel;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Jot;->throwExceptionIfImmutable()V

    .line 108
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 109
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Jot;->throwExceptionIfImmutable()V

    .line 136
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Jot rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Jot;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Jot;->rel:Lcom/google/gdata/data/contacts/Jot$Rel;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "rel"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/Jot;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method
