.class public Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
.super Ljava/lang/Object;
.source "AjaxFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/AjaxFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AjaxResponse"
.end annotation


# instance fields
.field private out:Ljava/io/PrintWriter;

.field private request:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method private constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method

.method constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;Lorg/mortbay/util/ajax/AjaxFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "x1"    # Ljava/io/PrintWriter;
    .param p3, "x2"    # Lorg/mortbay/util/ajax/AjaxFilter$1;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public elementResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 145
    const-string p1, "unknown"

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<response type=\"element\" id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</response>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public objectResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/String;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_0
    if-nez p1, :cond_1

    .line 154
    const-string p1, "unknown"

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<response type=\"object\" id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</response>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void
.end method
