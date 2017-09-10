.class public Ljavax/servlet/UnavailableException;
.super Ljavax/servlet/ServletException;
.source "UnavailableException.java"


# instance fields
.field private permanent:Z

.field private seconds:I

.field private servlet:Ljavax/servlet/Servlet;


# direct methods
.method public constructor <init>(ILjavax/servlet/Servlet;Ljava/lang/String;)V
    .locals 1
    .param p1, "seconds"    # I
    .param p2, "servlet"    # Ljavax/servlet/Servlet;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p3}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    .line 106
    if-gtz p1, :cond_0

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    .line 110
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 111
    return-void

    .line 109
    :cond_0
    iput p1, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 153
    invoke-direct {p0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 155
    if-gtz p2, :cond_0

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    .line 160
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 161
    return-void

    .line 158
    :cond_0
    iput p2, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;Ljava/lang/String;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 84
    return-void
.end method


# virtual methods
.method public getServlet()Ljavax/servlet/Servlet;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableSeconds()I
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    return v0
.end method
