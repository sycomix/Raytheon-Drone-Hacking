.class public final Lcom/google/gdata/data/books/Viewability$Value;
.super Ljava/lang/Object;
.source "Viewability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/books/Viewability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# static fields
.field public static final VIEW_ALL_PAGES:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_all_pages"

.field public static final VIEW_NO_PAGES:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_no_pages"

.field public static final VIEW_PARTIAL:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_partial"

.field public static final VIEW_UNKNOWN:Ljava/lang/String; = "http://schemas.google.com/books/2008#view_unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
