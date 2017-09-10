.class public Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;
.super Lcom/google/gdata/data/ValueConstruct;
.source "Rfc822Msg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_ENCODING:Ljava/lang/String; = "encoding"

.field private static EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription; = null

.field public static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "rfc822Msg"


# instance fields
.field private encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    .line 66
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 67
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 68
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "rfc822Msg"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;-><init>(Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;-><init>(Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "encoding"    # Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    .prologue
    .line 96
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "rfc822Msg"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez p2, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoding may not be null.  Use Encoding.NONE to specify no encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p2, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    .line 103
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 123
    const-string v1, "encoding"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "enc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    iput-object v1, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 153
    :cond_2
    instance-of v3, p1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;

    .line 156
    .local v0, "other":Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 160
    :cond_5
    iget-object v3, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    iget-object v4, v0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-virtual {v3, v4}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getEncoding()Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 142
    const/16 v0, 0x1f

    .line 143
    .local v0, "prime":I
    invoke-super {p0}, Lcom/google/gdata/data/ValueConstruct;->hashCode()I

    move-result v1

    .line 144
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-virtual {v3}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 146
    return v1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 135
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->NONE:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    if-eq v0, v1, :cond_0

    .line 136
    const-string v0, "encoding"

    iget-object v1, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg;->encoding:Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;

    invoke-virtual {v1}, Lcom/google/gdata/data/appsforyourdomain/migration/Rfc822Msg$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    return-void
.end method
