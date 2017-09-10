.class public Lcom/google/gdata/data/contacts/Relation;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Relation.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "relation"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/Relation$Rel;
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final REL:Ljava/lang/String; = "rel"

.field private static final REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/Relation$Rel;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "relation"


# instance fields
.field private label:Ljava/lang/String;

.field private rel:Lcom/google/gdata/data/contacts/Relation$Rel;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/contacts/Relation$1;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/Relation$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/Relation;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/data/contacts/Relation$Rel;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "rel"    # Lcom/google/gdata/data/contacts/Relation$Rel;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Relation;->setLabel(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/Relation;->setRel(Lcom/google/gdata/data/contacts/Relation$Rel;)V

    .line 142
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/contacts/Relation;->setValue(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Relation;->setImmutable(Z)V

    .line 144
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 244
    const-class v1, Lcom/google/gdata/data/contacts/Relation;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 246
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 247
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 248
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

    const/4 v2, 0x0

    .line 261
    const-string v0, "label"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    .line 262
    const-string v1, "rel"

    const-class v3, Lcom/google/gdata/data/contacts/Relation$Rel;

    sget-object v5, Lcom/google/gdata/data/contacts/Relation;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Relation$Rel;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 264
    invoke-virtual {p1, v4, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    if-ne p0, p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Relation;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 273
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 275
    check-cast v0, Lcom/google/gdata/data/contacts/Relation;

    .line 276
    .local v0, "other":Lcom/google/gdata/data/contacts/Relation;
    iget-object v3, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/Relation;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/Relation;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/Relation;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Lcom/google/gdata/data/contacts/Relation$Rel;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->getRel()Lcom/google/gdata/data/contacts/Relation$Rel;

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
    .line 227
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->getValue()Ljava/lang/String;

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
    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 284
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 285
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    if-eqz v1, :cond_1

    .line 288
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    invoke-virtual {v2}, Lcom/google/gdata/data/contacts/Relation$Rel;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 291
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 293
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 253
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    sget-object v2, Lcom/google/gdata/data/contacts/Relation;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 255
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->throwExceptionIfImmutable()V

    .line 162
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRel(Lcom/google/gdata/data/contacts/Relation$Rel;)V
    .locals 0
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/Relation$Rel;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->throwExceptionIfImmutable()V

    .line 190
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    .line 191
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Relation;->throwExceptionIfImmutable()V

    .line 218
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Relation label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->rel:Lcom/google/gdata/data/contacts/Relation$Rel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Relation;->value:Ljava/lang/String;

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
    .line 232
    return-void
.end method
