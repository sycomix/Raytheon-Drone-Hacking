.class Lorg/mortbay/jetty/HttpFields$1;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field field:Lorg/mortbay/jetty/HttpFields$Field;

.field i:I

.field private final this$0:Lorg/mortbay/jetty/HttpFields;

.field private final val$revision:I


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpFields;I)V
    .locals 1

    .prologue
    .line 222
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iput p2, p0, Lorg/mortbay/jetty/HttpFields$1;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 228
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v2, :cond_0

    .line 238
    :goto_0
    return v1

    .line 229
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v3, v3, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 231
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$1;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/jetty/HttpFields$1;->i:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 232
    .local v0, "f":Lorg/mortbay/jetty/HttpFields$Field;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$000(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$1;->val$revision:I

    if-ne v2, v3, :cond_0

    .line 234
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    goto :goto_0

    .line 238
    .end local v0    # "f":Lorg/mortbay/jetty/HttpFields$Field;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$1;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$200(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "n":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$1;->field:Lorg/mortbay/jetty/HttpFields$Field;

    .line 247
    return-object v0

    .line 249
    .end local v0    # "n":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
