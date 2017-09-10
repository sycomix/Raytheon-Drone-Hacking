.class Lorg/mortbay/jetty/HttpFields$3;
.super Ljava/lang/Object;
.source "HttpFields.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field f:Lorg/mortbay/jetty/HttpFields$Field;

.field private final this$0:Lorg/mortbay/jetty/HttpFields;

.field private final val$field:Lorg/mortbay/jetty/HttpFields$Field;

.field private final val$revision:I


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/HttpFields;Lorg/mortbay/jetty/HttpFields$Field;I)V
    .locals 1

    .prologue
    .line 383
    iput-object p1, p0, Lorg/mortbay/jetty/HttpFields$3;->this$0:Lorg/mortbay/jetty/HttpFields;

    iput-object p2, p0, Lorg/mortbay/jetty/HttpFields$3;->val$field:Lorg/mortbay/jetty/HttpFields$Field;

    iput p3, p0, Lorg/mortbay/jetty/HttpFields$3;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->val$field:Lorg/mortbay/jetty/HttpFields$Field;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 388
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/HttpFields$3;->val$revision:I

    if-eq v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    goto :goto_0

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    .line 398
    .local v0, "n":Lorg/mortbay/jetty/HttpFields$Field;
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$400(Lorg/mortbay/jetty/HttpFields$Field;)Lorg/mortbay/jetty/HttpFields$Field;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    .line 399
    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpFields$3;->f:Lorg/mortbay/jetty/HttpFields$Field;

    invoke-static {v1}, Lorg/mortbay/jetty/HttpFields$Field;->access$100(Lorg/mortbay/jetty/HttpFields$Field;)I

    move-result v1

    iget v2, p0, Lorg/mortbay/jetty/HttpFields$3;->val$revision:I

    if-ne v1, v2, :cond_1

    .line 400
    :cond_2
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
