$path = "D:\Programming\Attendence-Management-System\classes.html"
$content = Get-Content $path -Raw

# Add Instructor field before Room
$old = '<div>
          <label class="text-sm font-medium text-black/70 mb-1.5 block" style="font-family: ''Inter'', sans-serif">Room</label>
          <input id="inputRoom"'
$new = '<div>
          <label class="text-sm font-medium text-black/70 mb-1.5 block" style="font-family: ''Inter'', sans-serif">Instructor Name</label>
          <input id="inputInstructor" type="text" placeholder="e.g. John Doe" required class="w-full px-4 py-2.5 rounded-xl border border-black/10 bg-white text-sm text-black outline-none focus:border-black/30 transition-all" style="font-family: ''Inter'', sans-serif" />
        </div>
        <div>
          <label class="text-sm font-medium text-black/70 mb-1.5 block" style="font-family: ''Inter'', sans-serif">Room</label>
          <input id="inputRoom"'
$content = $content.Replace($old, $new)

Set-Content $path -Value $content
Write-Host "Done"