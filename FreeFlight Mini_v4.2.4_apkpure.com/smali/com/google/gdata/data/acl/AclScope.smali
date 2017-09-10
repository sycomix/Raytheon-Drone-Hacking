.class public Lcom/google/gdata/data/acl/AclScope;
.super Lcom/google/gdata/data/AbstractExtension;
.source "AclScope.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRequired = true
    localName = "scope"
    nsAlias = "gAcl"
    nsUri = "http://schemas.google.com/acl/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/acl/AclScope$Type;
    }
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field static final SCOPE:Ljava/lang/String; = "scope"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/acl/AclScope$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private name:Ljava/lang/String;

.field private type:Lcom/google/gdata/data/acl/AclScope$Type;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/acl/AclScope;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 91
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/acl/AclScope$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/acl/AclScope$Type;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 91
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclScope;->setType(Lcom/google/gdata/data/acl/AclScope$Type;)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/acl/AclScope;->setValue(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclScope;->setImmutable(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/acl/AclScope$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/acl/AclScope$Type;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 91
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclScope;->setType(Lcom/google/gdata/data/acl/AclScope$Type;)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/acl/AclScope;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/acl/AclScope;->setName(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/acl/AclScope;->setImmutable(Z)V

    .line 80
    return-void
.end method

.method public static fromExternalForm(Ljava/lang/String;)Lcom/google/gdata/data/acl/AclScope;
    .locals 5
    .param p0, "externalForm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 126
    :cond_1
    sget-object v3, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-static {v3}, Lcom/google/gdata/data/acl/AclScope;->getTypeIdentifier(Lcom/google/gdata/data/acl/AclScope$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    new-instance v3, Lcom/google/gdata/data/acl/AclScope;

    sget-object v4, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-direct {v3, v4, v2}, Lcom/google/gdata/data/acl/AclScope;-><init>(Lcom/google/gdata/data/acl/AclScope$Type;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0

    .line 129
    :cond_2
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "components":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 133
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/gdata/data/acl/AclScope;->getType(Ljava/lang/String;)Lcom/google/gdata/data/acl/AclScope$Type;

    move-result-object v1

    .line 134
    .local v1, "type":Lcom/google/gdata/data/acl/AclScope$Type;
    if-eqz v1, :cond_0

    sget-object v3, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    if-eq v1, v3, :cond_0

    .line 137
    new-instance v2, Lcom/google/gdata/data/acl/AclScope;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v1, v3}, Lcom/google/gdata/data/acl/AclScope;-><init>(Lcom/google/gdata/data/acl/AclScope$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getType(Ljava/lang/String;)Lcom/google/gdata/data/acl/AclScope$Type;
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {}, Lcom/google/gdata/data/acl/AclScope$Type;->values()[Lcom/google/gdata/data/acl/AclScope$Type;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/data/acl/AclScope$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 177
    .local v3, "type":Lcom/google/gdata/data/acl/AclScope$Type;
    sget-object v4, Lcom/google/gdata/data/acl/AclScope;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-virtual {v4, v3}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    .end local v3    # "type":Lcom/google/gdata/data/acl/AclScope$Type;
    :goto_1
    return-object v3

    .line 176
    .restart local v3    # "type":Lcom/google/gdata/data/acl/AclScope$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "type":Lcom/google/gdata/data/acl/AclScope$Type;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getTypeIdentifier(Lcom/google/gdata/data/acl/AclScope$Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/google/gdata/data/acl/AclScope$Type;

    .prologue
    .line 172
    sget-object v0, Lcom/google/gdata/data/acl/AclScope;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-virtual {v0, p0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 7
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 165
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/acl/AclScope$Type;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/acl/AclScope;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/acl/AclScope$Type;

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 167
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v6}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    .line 168
    const-string v0, "name"

    invoke-virtual {p1, v0, v6}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p0, p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/acl/AclScope;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 191
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/google/gdata/data/acl/AclScope;

    .line 194
    .local v0, "vc":Lcom/google/gdata/data/acl/AclScope;
    iget-object v3, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/acl/AclScope;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    iget-object v4, v0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-static {v3, v4}, Lcom/google/gdata/data/acl/AclScope;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/acl/AclScope;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/gdata/data/acl/AclScope$Type;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 200
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    if-eqz v1, :cond_1

    .line 204
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-virtual {v2}, Lcom/google/gdata/data/acl/AclScope$Type;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 207
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    :cond_2
    return v0
.end method

.method public putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 157
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    sget-object v2, Lcom/google/gdata/data/acl/AclScope;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 158
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclScope;->throwExceptionIfImmutable()V

    .line 103
    iput-object p1, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setType(Lcom/google/gdata/data/acl/AclScope$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/acl/AclScope$Type;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclScope;->throwExceptionIfImmutable()V

    .line 87
    iput-object p1, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/acl/AclScope;->throwExceptionIfImmutable()V

    .line 95
    iput-object p1, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-static {v0}, Lcom/google/gdata/data/acl/AclScope;->getTypeIdentifier(Lcom/google/gdata/data/acl/AclScope$Type;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-static {v1}, Lcom/google/gdata/data/acl/AclScope;->getTypeIdentifier(Lcom/google/gdata/data/acl/AclScope$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AclScope type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/acl/AclScope;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/google/gdata/data/acl/AclScope;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->type:Lcom/google/gdata/data/acl/AclScope$Type;

    sget-object v1, Lcom/google/gdata/data/acl/AclScope$Type;->DEFAULT:Lcom/google/gdata/data/acl/AclScope$Type;

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attribute value should not be set for default type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/acl/AclScope;->value:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 151
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/acl/AclScope;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 153
    :cond_2
    return-void
.end method
