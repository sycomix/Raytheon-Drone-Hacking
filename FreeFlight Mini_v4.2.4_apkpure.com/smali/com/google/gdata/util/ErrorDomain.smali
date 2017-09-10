.class public abstract Lcom/google/gdata/util/ErrorDomain;
.super Ljava/lang/Object;
.source "ErrorDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    }
.end annotation


# instance fields
.field private final domainName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorDomain;->domainName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/gdata/util/ErrorDomain;->domainName:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain;->domainName:Ljava/lang/String;

    return-object v0
.end method
