.class Lcom/google/gdata/data/extensions/Email$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Email;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Email;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    .line 137
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 138
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "rel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/Email;->rel:Ljava/lang/String;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v1, "label"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/Email;->label:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_2
    const-string v1, "address"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/Email;->address:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "quota"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/Email;->quota:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_4
    const-string v1, "primary"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/Email$Handler;->parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    .local v0, "pr":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    iput-boolean v1, v2, Lcom/google/gdata/data/extensions/Email;->primary:Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 156
    .end local v0    # "pr":Ljava/lang/Boolean;
    :cond_6
    const-string v1, "displayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/Email;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Email$Handler;->this$0:Lcom/google/gdata/data/extensions/Email;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Email;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingAddressAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 171
    return-void
.end method
