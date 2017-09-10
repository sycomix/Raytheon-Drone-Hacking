.class public final Lcom/google/gdata/data/extensions/StructuredPostalAddress$Usage;
.super Ljava/lang/Object;
.source "StructuredPostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/StructuredPostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Usage"
.end annotation


# static fields
.field public static final GENERAL:Ljava/lang/String; = "http://schemas.google.com/g/2005#general"

.field public static final LOCAL:Ljava/lang/String; = "http://schemas.google.com/g/2005#local"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
