.class Lorg/mortbay/jetty/HttpFields$2;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field field:Lorg/mortbay/jetty/HttpFields$Field;

.field i:I

.field private final this$0:Lorg/mortbay/jetty/HttpFields;

.field private final val$revision:I


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpFields;I)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$2;->this$0:Lorg/mortbay/jetty/HttpFields;

    iput p2, p0, Lorg/mortbay/jetty/HttpFields$2;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpFields$2;->i:I

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 268
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v2, :cond_0

    .line 278
    :goto_0
    return v1

    .line 269
    :cond_0
    iget v2, p0, Lorg/mortbay/jetty/HttpFields$2;->i:I

    iget-object v3, p0, Lorg/mortbay/jetty/HttpFields$2;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v3, v3, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 271
    iget-object v2, p0, Lorg/mortbay/jetty/HttpFields$2;->this$0:Lorg/mortbay/jetty/HttpFields;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpFields;->_fields:Ljava/util/ArrayList;

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$2;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/jetty/HttpFields$2;->i:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpFields$Field;

    .line 272
    .local v0, "f":Lorg/mortbay/jetty/HttpFields$Field;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v2

    iget v3, p0, Lorg/mortbay/jetty/HttpFields$2;->val$revision:I

    if-ne v2, v3, :cond_0

    .line 274
    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    goto :goto_0

    .line 278
    .end local v0    # "f":Lorg/mortbay/jetty/HttpFields$Field;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpFields$2;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    .line 286
    .local v0, "f":Lorg/mortbay/jetty/HttpFields$Field;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$2;->field:Lorg/mortbay/jetty/HttpFields$Field;

    .line 287
    return-object v0

    .line 289
    .end local v0    # "f":Lorg/mortbay/jetty/HttpFields$Field;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
