.class Lcom/google/gdata/data/appsforyourdomain/Login$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/Login;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/Login;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    .line 215
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 216
    const-string v0, "ipWhitelisted"

    invoke-virtual {p0, p3, v0}, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/gdata/data/appsforyourdomain/Login;->ipWhitelisted:Ljava/lang/Boolean;

    .line 217
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "userName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->userName:Ljava/lang/String;

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v0, "password"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->password:Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "hashFunctionName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->hashFunctionName:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_3
    const-string v0, "suspended"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->suspended:Ljava/lang/Boolean;

    goto :goto_0

    .line 235
    :cond_5
    const-string v0, "admin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    goto :goto_0

    .line 238
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->admin:Ljava/lang/Boolean;

    goto :goto_0

    .line 241
    :cond_7
    const-string v0, "agreedToTerms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 242
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 243
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 244
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->agreedToTerms:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 247
    :cond_9
    const-string v0, "changePasswordAtNextLogin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 250
    :cond_a
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Login$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Login;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Login;->changePasswordAtNextLogin:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method
