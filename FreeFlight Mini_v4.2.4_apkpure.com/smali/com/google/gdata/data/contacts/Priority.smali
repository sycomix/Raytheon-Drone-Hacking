.class public Lcom/google/gdata/data/contacts/Priority;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Priority.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "priority"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/Priority$Rel;
    }
.end annotation


# static fields
.field private static final REL:Ljava/lang/String; = "rel"

.field private static final REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/Priority$Rel;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "priority"


# instance fields
.field private rel:Lcom/google/gdata/data/contacts/Priority$Rel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/Priority;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/contacts/Priority$Rel;)V
    .locals 1
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/Priority$Rel;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Priority;->setRel(Lcom/google/gdata/data/contacts/Priority$Rel;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Priority;->setImmutable(Z)V

    .line 79
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 126
    const-class v1, Lcom/google/gdata/data/contacts/Priority;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 128
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 129
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 130
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
    .line 141
    const-string v1, "rel"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/contacts/Priority$Rel;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/contacts/Priority;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Priority$Rel;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 143
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 154
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Priority;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 153
    check-cast v0, Lcom/google/gdata/data/contacts/Priority;

    .line 154
    .local v0, "other":Lcom/google/gdata/data/contacts/Priority;
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    iget-object v2, v0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    invoke-static {v1, v2}, Lcom/google/gdata/data/contacts/Priority;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getRel()Lcom/google/gdata/data/contacts/Priority$Rel;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    return-object v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Priority;->getRel()Lcom/google/gdata/data/contacts/Priority$Rel;

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
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 160
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    if-eqz v1, :cond_0

    .line 161
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    invoke-virtual {v2}, Lcom/google/gdata/data/contacts/Priority$Rel;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 163
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 135
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    sget-object v2, Lcom/google/gdata/data/contacts/Priority;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 136
    return-void
.end method

.method public setRel(Lcom/google/gdata/data/contacts/Priority$Rel;)V
    .locals 0
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/Priority$Rel;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Priority;->throwExceptionIfImmutable()V

    .line 97
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Priority rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

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
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Priority;->rel:Lcom/google/gdata/data/contacts/Priority$Rel;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "rel"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/Priority;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
