.class public final Lcom/google/gdata/data/docs/DocumentListLink$Rel;
.super Ljava/lang/Object;
.source "DocumentListLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/docs/DocumentListLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rel"
.end annotation


# static fields
.field public static final EXPORT:Ljava/lang/String; = "http://schemas.google.com/docs/2007#export"

.field public static final PARENT:Ljava/lang/String; = "http://schemas.google.com/docs/2007#parent"

.field public static final TABLES_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#tablesfeed"

.field public static final WORKSHEETS_FEED:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
