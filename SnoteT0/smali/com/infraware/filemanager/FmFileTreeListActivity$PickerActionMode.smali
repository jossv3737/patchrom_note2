.class public final enum Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;
.super Ljava/lang/Enum;
.source "FmFileTreeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileTreeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickerActionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Attach:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

.field public static final enum Insert:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

.field public static final enum None:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->None:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    new-instance v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    const-string v1, "Attach"

    invoke-direct {v0, v1, v3}, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->Attach:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    new-instance v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v4}, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->Insert:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    sget-object v1, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->None:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->Attach:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->Insert:Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->ENUM$VALUES:[Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    return-object v0
.end method

.method public static values()[Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;->ENUM$VALUES:[Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/filemanager/FmFileTreeListActivity$PickerActionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
