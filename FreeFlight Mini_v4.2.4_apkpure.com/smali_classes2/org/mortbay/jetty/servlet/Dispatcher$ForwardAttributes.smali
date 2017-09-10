.class Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardAttributes"
.end annotation


# instance fields
.field _attr:Lorg/mortbay/util/Attributes;

.field _contextPath:Ljava/lang/String;

.field _pathInfo:Ljava/lang/String;

.field _query:Ljava/lang/String;

.field _requestURI:Ljava/lang/String;

.field _servletPath:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/servlet/Dispatcher;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V
    .locals 0
    .param p2, "attributes"    # Lorg/mortbay/util/Attributes;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    .line 370
    return-void
.end method


# virtual methods
.method public clearAttributes()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 377
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 390
    :goto_0
    return-object v0

    .line 378
    :cond_0
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_1
    const-string v0, "javax.servlet.forward.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, "javax.servlet.forward.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 381
    :cond_3
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 384
    :cond_4
    const-string v0, "javax.servlet.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "org.mortbay.jetty.included"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 385
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_6
    const-string v0, "org.mortbay.jetty.forwarded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 390
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 396
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 397
    .local v2, "set":Ljava/util/HashSet;
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v3}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 398
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "name":Ljava/lang/String;
    const-string v3, "javax.servlet.include."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "javax.servlet.forward."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v3}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 408
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 409
    const-string v3, "javax.servlet.forward.path_info"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_1
    const-string v3, "javax.servlet.forward.request_uri"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    const-string v3, "javax.servlet.forward.servlet_path"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v3, "javax.servlet.forward.context_path"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 416
    const-string v3, "javax.servlet.forward.query_string"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 411
    :cond_3
    const-string v3, "javax.servlet.forward.path_info"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_4
    const-string v3, "javax.servlet.forward.query_string"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    const-string v0, "javax.servlet.forward.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 444
    :goto_0
    return-void

    .line 430
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v0, "javax.servlet.forward.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 431
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "javax.servlet.forward.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 432
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v0, "javax.servlet.forward.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 433
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "javax.servlet.forward.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 435
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    if-nez p2, :cond_5

    .line 436
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 440
    :cond_6
    if-nez p2, :cond_7

    .line 441
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FORWARD+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
