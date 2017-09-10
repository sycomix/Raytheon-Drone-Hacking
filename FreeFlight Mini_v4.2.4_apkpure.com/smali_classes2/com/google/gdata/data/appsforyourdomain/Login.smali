.class public Lcom/google/gdata/data/appsforyourdomain/Login;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Login.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/Login$Handler;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_ADMIN:Ljava/lang/String; = "admin"

.field public static final ATTRIBUTE_AGREED_TO_TERMS:Ljava/lang/String; = "agreedToTerms"

.field public static final ATTRIBUTE_CHANGE_PASSWORD_AT_NEXT_LOGIN:Ljava/lang/String; = "changePasswordAtNextLogin"

.field public static final ATTRIBUTE_HASH_FUNCTION_NAME:Ljava/lang/String; = "hashFunctionName"

.field public static final ATTRIBUTE_IPWHITELISTED:Ljava/lang/String; = "ipWhitelisted"

.field public static final ATTRIBUTE_PASSWORD:Ljava/lang/String; = "password"

.field public static final ATTRIBUTE_SUSPENDED:Ljava/lang/String; = "suspended"

.field public static final ATTRIBUTE_USER_NAME:Ljava/lang/String; = "userName"

.field public static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "login"


# instance fields
.field protected admin:Ljava/lang/Boolean;

.field protected agreedToTerms:Ljava/lang/Boolean;

.field protected changePasswordAtNextLogin:Ljava/lang/Boolean;

.field protected hashFunctionName:Ljava/lang/String;

.field protected ipWhitelisted:Ljava/lang/Boolean;

.field protected password:Ljava/lang/String;

.field protected suspended:Ljava/lang/Boolean;

.field protected userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    .line 92
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    .line 102
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    .line 120
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    .line 129
    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    .line 212
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 142
    .local v0, "extensionDescription":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 143
    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 144
    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 146
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "userName"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->userName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "password"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "suspended"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 172
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "ipWhitelisted"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "hashFunctionName"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 182
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "admin"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "changePasswordAtNextLogin"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 191
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "agreedToTerms"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_7
    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "login"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/appsforyourdomain/Login;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/appsforyourdomain/Login;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 201
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "login"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public getAdmin()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAgreedToTerms()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChangePasswordAtNextLogin()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;-><init>(Lcom/google/gdata/data/appsforyourdomain/Login;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getHashFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpWhitelisted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspended()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdmin(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    return-void
.end method

.method public setAgreedToTerms(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    return-void
.end method

.method public setChangePasswordAtNextLogin(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public setHashFunctionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    return-void
.end method

.method public setIpWhitelisted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->password:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSuspended(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login;->userName:Ljava/lang/String;

    .line 64
    return-void
.end method
