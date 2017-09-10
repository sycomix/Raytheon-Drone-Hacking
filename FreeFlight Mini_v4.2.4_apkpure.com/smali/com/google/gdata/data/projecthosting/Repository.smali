.class public Lcom/google/gdata/data/projecthosting/Repository;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Repository.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "repository"
    nsAlias = "projects"
    nsUri = "http://schemas.google.com/projecthosting/projects/2010"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/projecthosting/Repository$Type;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/projecthosting/Repository$Type;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "repository"


# instance fields
.field private type:Lcom/google/gdata/data/projecthosting/Repository$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/projecthosting/Repository;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/projecthosting/Repository$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/projecthosting/Repository$Type;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Repository;->setType(Lcom/google/gdata/data/projecthosting/Repository$Type;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Repository;->setImmutable(Z)V

    .line 77
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 163
    const-class v1, Lcom/google/gdata/data/projecthosting/Repository;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 165
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 167
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
    .line 178
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/projecthosting/Repository$Type;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/projecthosting/Repository;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/Repository$Type;

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 180
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 81
    const-class v0, Lcom/google/gdata/data/projecthosting/Repository;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    const-class v0, Lcom/google/gdata/data/projecthosting/Repository;

    const-class v1, Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getRepositoryUrl()Lcom/google/gdata/data/projecthosting/RepositoryUrl;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Repository;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    return-object v0
.end method

.method public getType()Lcom/google/gdata/data/projecthosting/Repository$Type;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    return-object v0
.end method

.method public hasRepositoryUrl()Z
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Repository;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/Repository;->getType()Lcom/google/gdata/data/projecthosting/Repository$Type;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 172
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    sget-object v2, Lcom/google/gdata/data/projecthosting/Repository;->TYPE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 173
    return-void
.end method

.method public setRepositoryUrl(Lcom/google/gdata/data/projecthosting/RepositoryUrl;)V
    .locals 1
    .param p1, "repositoryUrl"    # Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-class v0, Lcom/google/gdata/data/projecthosting/RepositoryUrl;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/Repository;->removeExtension(Ljava/lang/Class;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/Repository;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setType(Lcom/google/gdata/data/projecthosting/Repository$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/projecthosting/Repository$Type;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/Repository;->throwExceptionIfImmutable()V

    .line 134
    iput-object p1, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Repository type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

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
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/Repository;->type:Lcom/google/gdata/data/projecthosting/Repository$Type;

    if-nez v0, :cond_0

    .line 149
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/google/gdata/data/projecthosting/Repository;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
